from airflow import DAG
from datetime import datetime, timedelta
from airflow.operators.bash import BashOperator

with DAG(
    dag_id = 'my_first_dag',
    start_date = datetime(2025,3,18),
    schedule_interval= '@daily'
) as dag:
    task0 = BashOperator(
        task_id = 'zero_task',
        bash_command = 'echo hello world, this is my zero task'
    )
    task1 = BashOperator(
        task_id = 'first_task',
        bash_command='echo hello world, this is my first task'
    )
    task2 = BashOperator(
        task_id = 'second_task',
        bash_command = 'echo hello world, this is my second task'
    )
    task3 = BashOperator(
        task_id = 'third_task',
        bash_command = 'echo hello world, this is my third task'
    )
    task4 = BashOperator(
        task_id = 'fourth_task',
        bash_command = 'echo hello world, this is my fourth task'
    )
    task5 = BashOperator(
        task_id = 'fifth_task',
        bash_command = 'echo hello world, this is my fifth task'
    )
    task6 = BashOperator(
        task_id = 'sixth_task',
        bash_command = 'echo hello world, this is my sixth task'
    )
    task0 >> task1 >> [task2 , task3]
    task2 >> task4
    task3 >> task5
    [task4 , task5] >> task6