#!/bin/bash

# 실행할 SQL 파일 경로
sql_path="/home/work/hoeun/spider1/gpt4_rewrite_queries/"
output_path="/home/work/hoeun/spider1/gpt4_rewrite_queries/"
db_command="/usr/local/pgsql/bin/psql -d chinook -U tpch"

# SQL 파일 실행 및 결과 저장
echo "Running EXPLAIN ANALYZE on SQL files..."

for i in {0..83}; do
    sql_file="${sql_path}${i}.sql"
    output_file="${output_path}${i}a.out"

    if [[ -f "$sql_file" ]]; then
        echo "Processing $sql_file..."
        # SQL 파일을 읽어 EXPLAIN ANALYZE 추가하여 실행
        sql_query=$(< "$sql_file")
        $db_command -c "EXPLAIN ANALYZE $sql_query" > "$output_file"
        echo "Saved output to $output_file"
    else
        echo "File $sql_file does not exist. Skipping."
    fi
done

echo "Execution completed."
