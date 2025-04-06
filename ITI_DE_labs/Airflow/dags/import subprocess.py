import subprocess

ssis_command = r'"C:\Program Files\Microsoft SQL Server\160\DTS\Binn\dtexec" /F "C:\Users\Shehab\source\repos\airflow\Package.dtsx"'

try:
    result = subprocess.run(ssis_command, shell=True, check=True, capture_output=True, text=True)
    print("✅ SSIS package executed successfully")
    print("📝 Output:\n", result.stdout)
except subprocess.CalledProcessError as e:
    print(f"❌ Error executing SSIS package: {e}")
    print("⚠️ Error Output:\n", e.stderr)
