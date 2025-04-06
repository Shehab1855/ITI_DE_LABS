from airflow import DAG
from datetime import datetime, timedelta
from airflow.operators.bash import BashOperator 

with DAG(
    dag_id='our_first_dag_2',
    start_date=datetime(2025, 3, 18),
    schedule_interval='@daily',  # Use `schedule` instead of `schedule_interval`
    catchup=False,  # Prevents running old missing DAGs
    dagrun_timeout = timedelta(minutes=45) 
) as dag:
    
    task1 = BashOperator(
        task_id='first_task',
        bash_command="echo 'hello this first task'",
    )
    task1  # Ensure tasks are assigned in the DAG
