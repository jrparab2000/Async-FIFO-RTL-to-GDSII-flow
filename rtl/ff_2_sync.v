// Enter RTL Code
module ff_2_sync #(parameter SIZE = 8) (
    input wire clk,
    input wire rst_n,
    input wire [SIZE-1:0] din,
    output reg [SIZE-1:0] dout
);
    reg [SIZE-1:0] ff_1;
    
    always@(posedge clk) begin
        if(!rst_n) begin
            dout <= 0;
            ff_1 <= 0;
        end
        else begin
            ff_1 <= din;
            dout <= ff_1;
        end
    end

endmodule
