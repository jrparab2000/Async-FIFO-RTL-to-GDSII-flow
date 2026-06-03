// New file
module b2g #(parameter SIZE = 8) (
    input wire [SIZE-1:0] din,
    output reg [SIZE-1:0] dout
);

    always@(*) begin
        dout[SIZE-1] = din[SIZE-1];
        for(int i = (SIZE-2); i >= 0; i--) begin
            dout[i] = din[i+1]^din[i];
        end
    end
endmodule
