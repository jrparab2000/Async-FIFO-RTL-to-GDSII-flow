// New file
module wtr_ptr #(parameter SIZE = 8) (
    input wire clk,
    input wire rst_n,
    input wire wtr_en,
    input wire [SIZE-1:0] ptr_g_in,
    output wire [SIZE-1:0] ptr_g_out,
    output wire [SIZE-1:0] ptr_b_out,
    output wire full
); 
    reg [SIZE-1:0] ptr, ptr_g, ptr_g_next;
    wire [SIZE-1:0] ptr_next;
    wire full_i;

    always@(posedge clk) begin
        if(!rst_n) begin
            ptr <= 0;
            ptr_g <= 0;
        end
        else begin
            if(!full_i && wtr_en) begin
                ptr <= ptr_next;
                ptr_g <= ptr_g_next;
            end
        end
    end

    always@(*) begin
        ptr_g_next[SIZE-1] = ptr_next[SIZE-1];
        for(int i = (SIZE-2); i >= 0; i--) begin
            ptr_g_next[i] = ptr_next[i+1]^ptr_next[i];
        end
    end

    assign ptr_next = ptr + 1;
    assign full_i = ptr_g_next == {~ptr_g_in[(SIZE-1):(SIZE-2)], ptr_g_in[(SIZE-3):0]};
    assign full = full_i;
    assign ptr_g_out = ptr_g;
    assign ptr_b_out = ptr;
endmodule
