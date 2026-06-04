// New file
module wtr_ptr #(parameter SIZE = 8) (
    input wire clk,
    input wire rst_n,
    input wire wtr_en,
    input wire [SIZE:0] ptr_g_in,
    output wire [SIZE:0] ptr_g_out,
    output wire [SIZE:0] ptr_b_out,
    output wire full
); 
    reg [SIZE:0] ptr, ptr_g, ptr_g_next;
    wire [SIZE:0] ptr_next;
    wire full_i;

    always@(posedge clk) begin
        if(!rst_n) begin
            ptr <= 0;
            ptr_g <= 0;
        end
        else begin
            if(!full_i && wtr_en) begin
                ptr <= ptr_next;
                // ptr_g <= ptr_g_next;
            end
        end
    end

    always@(*) begin
        ptr_g_next[SIZE] = ptr[SIZE];
        for(int i = (SIZE-1); i >= 0; i--) begin
            ptr_g_next[i] = ptr[i+1]^ptr[i];
        end
    end

    assign ptr_next = ptr + 1;
    assign full_i = ptr_g_next == {~ptr_g_in[(SIZE):(SIZE-1)], ptr_g_in[(SIZE-2):0]};
    assign full = full_i;
    assign ptr_g_out = ptr_g_next;
    assign ptr_b_out = ptr;
endmodule
