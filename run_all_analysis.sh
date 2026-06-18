#!/bin/bash
echo "=============================================="
echo "开始执行全套文献计量分析流程"
echo "=============================================="

# 步骤0：检索配置初始化校验
echo "步骤0：初始化并校验检索配置文件"
python3 src/00_init_query_config.py
if [ $? -ne 0 ]; then
    echo "错误：检索配置校验失败，终止全部流程"
    exit 1
fi

# 步骤1：导入原始文献数据
echo "步骤1：导入并合并原始文献数据"
python3 src/01_import_raw_data.py
if [ $? -ne 0 ]; then
    echo "错误：原始数据导入失败，终止全部流程"
    exit 1
fi

# 步骤2：自动化数据清洗与质控
echo "步骤2：执行文献自动清洗、去重、质量校验"
python3 src/02_auto_data_clean.py
if [ $? -ne 0 ]; then
    echo "错误：数据清洗流程出错，终止全部流程"
    exit 1
fi

# 步骤3：计算文献计量统计指标
echo "步骤3：计算年度发文、机构、关键词等计量指标"
python3 src/03_bibliometric_statistics.py
if [ $? -ne 0 ]; then
    echo "错误：统计指标计算失败，终止全部流程"
    exit 1
fi

# 步骤4：绘制知识图谱可视化图表
echo "步骤4：生成高清时序、机构、关键词图谱"
python3 src/04_draw_knowledge_graphs.py
if [ $? -ne 0 ]; then
    echo "错误：绘图流程异常，终止全部流程"
    exit 1
fi

# 步骤5：自动生成完整分析报告
echo "步骤5：整合所有数据，输出最终分析报告"
python3 src/05_generate_final_report.py
if [ $? -ne 0 ]; then
    echo "错误：报告生成失败，终止全部流程"
    exit 1
fi

echo "=============================================="
echo "全部分析流程执行完毕！"
echo 统计表格查看路径：outputs/stat_tables
echo 仿真日志查看路径：outputs/simulation_logs
echo 高清图谱查看路径：images
echo 完整报告查看路径：reports
echo "=============================================="
