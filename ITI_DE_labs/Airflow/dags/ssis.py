import subprocess
from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

# Define SSIS command
ssis_command = r'"C:\Program Files\Microsoft SQL Server\160\DTS\Binn\dtexec" /F "C:\Users\Shehab\source\repos\airflow\Package.dtsx"'

def run_ssis():
    try:
        result = subprocess.run(ssis_command, shell=True, check=True, capture_output=True, text=True)
        print("✅ SSIS package executed successfully")
        print("📝 Output:\n", result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"❌ Error executing SSIS package: {e}")
        print("⚠️ Error Output:\n", e.stderr)

# Default arguments for the DAG
default_args = {
    'owner': 'airflow',
    'start_date': datetime(2024, 4, 1),
    'retries': 1
}

# Define the DAG
with DAG(
    'run_ssis_package',
    default_args=default_args,
    schedule_interval='@daily',
    catchup=False
) as dag:

    # Task to execute SSIS package via Python
    run_ssis_task = PythonOperator(
        task_id='run_ssis',
        python_callable=run_ssis
    )

    run_ssis_task
