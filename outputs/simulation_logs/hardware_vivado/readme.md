# hardware_vivado FPGA硬件工程目录说明
## 项目简介
本工程为轻量化大语言模型FPGA推理加速器Verilog实现，适配Vivado 2023.2版本，分为四层模块化架构：顶层控制层、数据缓存层、运算加速层、外设交互层。
## 目录内部结构
1. src/：所有Verilog RTL源码，包含顶层模块、矩阵乘运算单元、量化模块、缓存控制器
2. tb/：仿真激励testbench文件，用于功能与时序仿真
3. constraints/：时序约束、IO引脚约束xdc文件
4. ip/：工程调用的Vivado官方IP核（BRAM、FIFO、DMA）
5. project/：.xpr工程文件，直接用Vivado 2023.2打开即可
## 操作流程
1. 打开Vivado 2023.2，加载project/fpga_llm_accelerator.xpr
2. 加载tb内激励文件，执行Run Simulation
3. 仿真完成后，时序、资源、性能日志自动导出至 outputs/simulation_logs
## 配套关系
本硬件架构方案是文献计量分析的落地实践载体，综述内硬件前沿架构分析均基于本工程设计思路展开。
