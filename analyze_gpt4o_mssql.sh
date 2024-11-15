#!/bin/bash

# 실행할 SQL 파일 경로
sql_path="/home/spider1/gpt4o_rewrite_queries/"
output_path="/home/spider1/gpt4o_rewrite_queries/mssql/"

# SQL 파일 실행 및 실행 계획 결과 저장
echo "Running EXPLAIN ANALYZE on SQL files..."

for i in {0..83}; do
    sql_file="${sql_path}${i}.sql"
    output_file="${output_path}${i}a.out"

    if [[ -f "$sql_file" ]]; then
        echo "Processing $sql_file..."
        sql_query=$(< "$sql_file")
        /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P 'Dlghdms0228!' -C -d Chinook -Q "SET STATISTICS TIME ON; SET STATISTICS IO ON; $sql_query" > "$output_file"
        echo "Saved analysis output to $output_file"
    else
        echo "File $sql_file does not exist. Skipping."
    fi
done

echo "Execution completed."
