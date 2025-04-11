import os
import re

# 공개용 README와 entry 목록 자동 생성기

README_PATH = "README.md"
AUTO_START = "<!-- reviews-start -->"
AUTO_END = "<!-- reviews-end -->"

entry_template = "| [{title}]({relpath}) | {date} |"

def extract_metadata(file_path):
    """파일에서 제목과 날짜 추출"""
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    title_match = re.search(r"#\s+\d+\.\s+(.*)", content)
    date_match = re.search(r"\*\*Date:\*\*\s*(.*)", content)

    return {
        "title": title_match.group(1).strip() if title_match else "Untitled",
        "date": date_match.group(1).strip() if date_match else "N/A",
    }

def build_readme():
    entries = []

    for fname in sorted(os.listdir(".")):
        if not fname.endswith(".md") or fname == "README.md":
            continue

        path = os.path.join(".", fname)
        meta = extract_metadata(path)

        entries.append(entry_template.format(
            title=meta["title"],
            relpath=fname,
            date=meta["date"]
        ))

    # README 업데이트
    with open(README_PATH, "r", encoding="utf-8") as f:
        original = f.read()

    table = ["| Title | Date |", "|-------|------|"] + entries
    injected = f"{AUTO_START}\n" + "\n".join(table) + f"\n{AUTO_END}"

    updated = re.sub(
        f"{AUTO_START}.*?{AUTO_END}",
        injected,
        original,
        flags=re.DOTALL
    )

    with open(README_PATH, "w", encoding="utf-8") as f:
        f.write(updated)

build_readme()
