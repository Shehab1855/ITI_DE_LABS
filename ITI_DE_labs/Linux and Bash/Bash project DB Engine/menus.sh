#! /usr/bin/bash  

export PS3="$1 >>"

# Get the database name from the argument
DB_NAME=$1

# Check if the database exists
if [[ ! -d "$HOME/.Shehabdb/$DB_NAME" ]]; then
    echo "Error: Database '$DB_NAME' does not exist."
    exit 1
fi

# Table management options
select choice in CreateTable SelectTable ListTable RemoveTable AlterTable "Exit"
do
    case $REPLY in
        1) # CreateTable
            source /mnt/e/4\ months/linux/bash/bash_project/create_table.sh $dbname
            
        ;;

        2) # SelectTable
            read -r -p "Enter Table Name to select: " table_name
            table_path="$HOME/.Shehabdb/$DB_NAME/$table_name"
            metadata_file="$table_path.meta"
            data_file="$table_path.data"

            # Check if the table exists
            if [[ -f "$metadata_file" ]]; then
                echo "Table '$table_name' selected."
                echo "Metadata:"
                cat "$metadata_file"
                echo "Data:"
                cat "$data_file"
            else
                echo "Error: Table '$table_name' does not exist."
            fi
            
        ;;

        3) # ListTable
            echo "Tables in database '$DB_NAME':"
            ls -1 "$HOME/.Shehabdb/$DB_NAME" | grep -E "\.meta$" | sed 's/.meta//'
            
        ;;

        4) # RemoveTable
            read -r -p "Enter Table Name to remove: " table_name
            metadata_file="$HOME/.Shehabdb/$DB_NAME/$table_name.meta"
            data_file="$HOME/.Shehabdb/$DB_NAME/$table_name.data"

            # Check if the table exists
            if [[ -f "$metadata_file" ]]; then
                rm "$metadata_file" "$data_file"
                echo "Table '$table_name' removed successfully."
            else
                echo "Error: Table '$table_name' does not exist."
            fi
            
        ;;

        5) # AlterTable
        
           read -r -p "Enter Table Name to alter: " table_name
           # Pass the database name and table name as arguments to the new script
           source /mnt/e/4\ months/linux/bash/bash_project/AlterTable.sh "$DB_NAME" "$table_name"
        ;;
        6) # Exit
            break
        ;;
        *)
            echo "Invalid choice. Please try again."
        ;;
    esac
done