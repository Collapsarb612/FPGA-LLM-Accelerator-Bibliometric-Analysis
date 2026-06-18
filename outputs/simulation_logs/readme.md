# simulation_logs 文件夹说明
## 用途
存放FPGA大模型加速器硬件工程仿真全部输出文件，仅硬件仿真流程生成，纯文献计量分析不会产生内容。
## 自动生成文件分类
1. timing_report.rpt：时序收敛报告、关键路径延时统计
2. resource_utilization.rpt：FPGA片上资源占用（LUT/FF/BRAM/DSP）
3. waveform_dump.vcd：仿真波形文件，可在Vivado中回放查看信号
4. performance_record.csv：加速器吞吐率、推理延迟量化测试数据
## 使用规范
1. 仿真工程路径：hardware_vivado，仿真完成后日志自动导出至此目录
2. 日志文件按仿真日期自动命名区分，不会互相覆盖
3. 硬件性能指标可作为文献计量综述的硬件对比论据
