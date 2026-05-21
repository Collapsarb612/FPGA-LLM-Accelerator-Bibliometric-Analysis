module matrix_calc(
    input clk,
    input rst_n,
    input en,
    input [7:0] data_in,
    output reg [7:0] data_out
);

reg [7:0] mem [0:3];
integer i;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        data_out <= 0;
        for(i=0;i<4;i=i+1) mem[i] <= 0;
    end
    else if(en) begin
        data_out <= data_in * 2 + 1;
    end
end

endmodule
