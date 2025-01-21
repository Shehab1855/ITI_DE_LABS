#!/usr/bin/bash

# Get the database name and table name from the arguments
DB_NAME=$1
table_name=$2

table_path="$HOME/.Shehabdb/$DB_NAME/$table_name"
metadata_file="$table_path.meta"
data_file="$table_path.data"

# Check if the table exists
if [[ -f "$metadata_file" ]]; then
    echo "Table '$table_name' selected for alteration."
    
    # Show current table metadata
    echo "Current Metadata:"
    cat "$metadata_file"
    
    # Backup the data before making any changes
    cp "$data_file" "$data_file.bak"
    echo "Data backed up to $data_file.bak."

    # Ask user for the operation they want to perform
    echo "What would you like to do?"
    select alter_choice in AddColumn RemoveColumn ChangeDataType ChangePrimaryKey "Exit"
    do
        case $alter_choice in
            AddColumn)
                read -r -p "Enter new column name and data type (column_name:data_type): " new_column
                if [[ $new_column =~ ^[a-zA-Z_]+:[a-zA-Z]+$ ]]; then
                    # Append new column to metadata file
                    echo "$new_column:notprimary" >> "$metadata_file"
                    # Update data file header
                    column_name=$(echo "$new_column" | cut -d: -f1)
                    sed -i "1s/$/:$column_name/" "$data_file"
                    echo "Column '$column_name' added successfully."
                else
                    echo "Invalid column format. Use column_name:data_type."
                fi
                break
                ;;
            RemoveColumn)
                read -r -p "Enter column name to remove: " column_name
                # Remove column from metadata
                sed -i "/^$column_name:/d" "$metadata_file"
                # Remove column from data file (preserve data order)
                awk -F: -v col="$column_name" '{ $col=""; print $0 }' "$data_file" > "$data_file.tmp" && mv "$data_file.tmp" "$data_file"
                echo "Column '$column_name' removed successfully."
                break
                ;;
            ChangeDataType)
                read -r -p "Enter column name to change: " column_name
                read -r -p "Enter new data type: " new_data_type

                # Check if the column exists in the metadata file
                if grep -q "^$column_name:" "$metadata_file"; then
                    # Change the column's data type in the metadata
                    sed -i "s/$column_name:[^:]*$/$column_name:$new_data_type/" "$metadata_file"
                    echo "Column '$column_name' data type changed to '$new_data_type'."
            
                    # Reprocess the data
                    echo "Reprocessing the data..."
                    while IFS=: read -r id name age; do
                        # Example for handling data conversion
                        if [[ "$new_data_type" == "string" ]]; then
                            # Convert integer to string (wrap in quotes)
                            age="\"$age\""
                        fi
                        # Rebuild the row with the updated data
                        echo "$id:$name:$age" >> "$data_file.tmp"
                    done < "$data_file"
                    
                    # Replace the original data file with the updated one
                    mv "$data_file.tmp" "$data_file"
                    echo "Data reprocessed and updated."
                else
                    echo "Error: Column '$column_name' does not exist in the metadata."
                fi
                break
                ;;
            ChangePrimaryKey)
                read -r -p "Enter column name to set as primary key: " column_name
                # Reset all columns' primary key status to notprimary
                sed -i 's/:primary/:notprimary/' "$metadata_file"
                # Set the chosen column as primary key
                sed -i "s/$column_name:[^:]*$/$column_name:$new_data_type:primary/" "$metadata_file"
                echo "Primary key changed to '$column_name'."
                break
                ;;
            *)
                break
                ;;
        esac
    done

    # After making changes to the metadata, let's check and reprocess the data
    echo "Reprocessing the data..."
    if [[ -f "$data_file.bak" ]]; then
        # Restore data from backup (if necessary, you can reprocess data here based on the new schema)
        mv "$data_file.bak" "$data_file"
        echo "Data restored from backup."
    fi
else
    echo "Error: Table '$table_name' does not exist."
fi
