create_clock -name clk -period 20 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports *]
