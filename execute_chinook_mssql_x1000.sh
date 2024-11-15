#!/bin/bash

# 실행할 SQL 파일 경로
sql_path="/home/spider1/chinook_queries/"
output_path="/home/spider1/chinook_queries/mssql/"

# SQL 파일 실행 및 실행 시간 결과 저장
echo "Running SQL files with 1000 executions and measuring time..."

for i in {0..83}; do
    sql_file="${sql_path}${i}.sql"
    output_file="${output_path}${i}_time.out"

    if [[ -f "$sql_file" ]]; then
        echo "Processing $sql_file..."
        sql_query=$(< "$sql_file")

        # 1000번 반복 실행을 위한 SQL 블록 작성
        repeat_query="SET NOCOUNT ON; DECLARE @i INT = 0; WHILE @i < 1000 BEGIN $sql_query; SET @i = @i + 1; END"

        # 실행 시간 측정 및 결과 저장
        start_time=$(date +%s%3N)  # 시작 시간 (밀리초)
        
        # SQL Server에서 STATISTICS TIME, IO를 활성화하고 쿼리를 1000번 반복 실행
        /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P 'Dlghdms0228!' -C -d Chinook -Q "SET STATISTICS TIME ON; SET STATISTICS IO ON; $repeat_query" > /dev/null
        
        end_time=$(date +%s%3N)  # 종료 시간 (밀리초)
        
        # 총 실행 시간 계산
        elapsed_time=$((end_time - start_time))

        # 실행 시간 결과를 파일에 저장
        echo "Total time for executing $sql_file 1000 times: ${elapsed_time} ms" > "$output_file"
        echo "Saved timing output to $output_file"
    else
        echo "File $sql_file does not exist. Skipping."
    fi
done

echo "Execution completed."
