import os
import re

# 경로 설정
output_path = "/home/spider1/gpt4o_rewrite_queries/mssql/"
output_file = "execute_gpt4o.txt"
results = []

# 0부터 83까지 반복하며 실행 시간 추출
for i in range(84):
    file_path = os.path.join(output_path, f"{i}_time.out")
    if os.path.isfile(file_path):
        with open(file_path, "r") as file:
            content = file.read()
            # 정규식을 사용하여 실행 시간(ms) 추출
            match = re.search(r"Total time for executing .+? (\d+) ms", content)
            if match:
                results.append(match.group(1))
            else:
                results.append("-1")  # 데이터가 없으면 -1 기록
    else:
        results.append("-1")  # 파일이 없으면 -1 기록

# 결과를 execute.txt 파일에 저장
with open(output_file, "w") as f:
    f.write("\n".join(results))

print(f"Execution times saved to {output_file}")
