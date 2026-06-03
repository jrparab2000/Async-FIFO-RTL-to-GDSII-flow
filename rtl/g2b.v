// New file
module g2b #(parameter SIZE = 8) (
    input wire [SIZE-1:0] din,
    output reg [SIZE-1:0] dout
);

    reg [SIZE-1:0] temp;
    always@(*) begin
        temp[SIZE-1] = din[SIZE-1];
        for(int i = (SIZE-2); i >= 0; i--) begin
            temp[i] = temp[i+1]^din[i];
        end
        dout = temp;
    end
endmodule
