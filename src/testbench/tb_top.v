`timescale 1ns / 1ps

module tb_top;

reg clk;
reg rst_n;
reg [7:0] data_in;
wire [7:0] data_out;

top u_top(
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_in),
    .data_out(data_out)
);

initial begin
    clk = 0;
    rst_n = 0;
    data_in = 0;
    #100;
    rst_n = 1;
    #200;
    data_in = 8'd10;
    #100;
    data_in = 8'd20;
    #1000;
    $stop;
end

always #10 clk = ~clk;

endmodule
