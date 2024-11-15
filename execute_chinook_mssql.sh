#!/bin/bash

# 실행할 SQL 파일 경로
sql_path="/home/spider1/chinook_queries/"
output_path="/home/spider1/chinook_queries/mssql/"
db_command="/opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P 'Dlghdms0228!' -C -d Chinook"

# SQL 파일 실행 및 결과 저장
echo "Running SQL files..."

for i in {0..83}; do
    sql_file="${sql_path}${i}.sql"
    output_file="${output_path}${i}.out"

    if [[ -f "$sql_file" ]]; then
        echo "Processing $sql_file..."
        # SQL 파일을 직접 sqlcmd에 전달
        /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P 'Dlghdms0228!' -C -d Chinook -i "$sql_file" > "$output_file"
        echo "Saved output to $output_file"
    else
        echo "File $sql_file does not exist. Skipping."
    fi
done

echo "Execution completed."
