import requests
import os

API_KEY = "waka_2270729c-50d2-4b8f-a5fc-bce015e5028e"
# 使用正确的统计接口
URL = "https://wakatime.com/api/v1/users/current/stats/last_30_days"

def fetch_stats():
    r = requests.get(URL, headers={"Authorization": f"Bearer {API_KEY}"})
    r.raise_for_status()
    # 返回 data 下的 languages 列表
    return r.json()["data"]["languages"]

def make_bar(used, maximum, width=30):
    filled = int(used/maximum * width)
    return "▇"*filled + "-"*(width-filled)

def build_md():
    data = fetch_stats()
    langs = [(d["name"], d["total_seconds"]/3600) for d in data]
    max_h = max(h for _,h in langs)
    md = "<details>\n<summary><b>📊 Language Usage (last 30 days)</b></summary>\n\n\n"
    md += "| Language | Usage | Hours |\n|:--------:|:-----:|:-----:|\n"
    for name, h in sorted(langs, key=lambda x: -x[1]):
        bar = make_bar(h, max_h)
        md += f"| {name:<8} | `{bar}` | {h:6.1f} |\n"
    md += "\n</details>\n"
    return md

if __name__=="__main__":
    doc = open("README.md","r", encoding="utf-8").read()
    start = "<!--LW_STATS_START-->"
    end   = "<!--LW_STATS_END-->"
    before = doc.split(start)[0] + start + "\n"
    after  = "\n" + end + doc.split(end)[1]
    new_doc = before + build_md() + after
    open("README.md","w", encoding="utf-8").write(new_doc)