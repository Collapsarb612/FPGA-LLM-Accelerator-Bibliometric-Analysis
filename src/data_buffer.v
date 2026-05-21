module data_buffer(
    input clk,
    input rst_n,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg en
);

reg [3:0] cnt;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
        en <= 0;
        data_out <= 0;
    end
    else begin
        data_out <= data_in;
        if(cnt == 4) en <= 1;
        else cnt <= cnt + 1;
    end
end

endmodule
