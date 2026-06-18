# stat_tables 文件夹说明
## 用途
存储脚本运行后输出的所有文献计量统计表格，全部为CSV格式，可直接用Excel打开查看。
## 自动生成文件清单
1. annual_publication.csv：2017-2026年度发文量统计表
2. institution_output.csv：研究机构发文量排名表
3. keyword_frequency.csv：高频关键词频次统计表
4. literature_type_distribution.csv：期刊/会议/学位论文类型分布表
5. cited_paper_ranking.csv：高被引里程碑文献榜单
## 使用规范
1. 禁止手动修改文件夹内CSV文件，所有数据由src脚本自动生成
2. 每次运行完整流程会覆盖旧表格，如需留存历史数据请手动备份
3. 所有表格数据为绘制images内图表的原始数据源
