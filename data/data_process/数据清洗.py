import pandas as pd

# 读取原始数据
df = pd.read_csv("raw_data.csv", encoding="utf-8")

# 1. 根据题名去除重复文献
df = df.drop_duplicates(subset=["题名"], keep="first")

# 2. 筛选主题相关文献
key_words = ["FPGA", "硬件加速", "大语言模型", "LLM", "边缘推理"]
filter_df = df[df["关键词"].str.contains("|".join(key_words), na=False)]

# 3. 剔除关键信息缺失的数据
filter_df = filter_df.dropna(subset=["题名", "作者", "发表年份"])

# 4. 保存清洗后数据
filter_df.to_csv("clean_data.csv", index=False, encoding="utf-8")
print("数据清洗完成，有效文献数量：", len(filter_df))
