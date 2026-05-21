module top(
    input clk,
    input rst_n,
    input [7:0] data_in,
    output [7:0] data_out
);

wire [7:0] mat_out;
wire [7:0] buf_out;
wire en;

data_buffer u_buf(
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_in),
    .data_out(buf_out),
    .en(en)
);

matrix_calc u_mat(
    .clk(clk),
    .rst_n(rst_n),
    .en(en),
    .data_in(buf_out),
    .data_out(mat_out)
);

active_func u_act(
    .data_in(mat_out),
    .data_out(data_out)
);

endmodule
