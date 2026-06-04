module mem #(parameter SIZE_FIFO = 8, parameter DATA_SIZE = 32)(
    input wire wclk,
    input wire wrst_n,
    input wire rclk,
    input wire rrst_n,
    input wire [DATA_SIZE-1:0] data_in,
    input wire [$clog2(SIZE_FIFO)-1:0] wtr_ptr,
    input wire full,
    input wire wtr_en,
    input wire [$clog2(SIZE_FIFO)-1:0] rd_ptr,
    input wire rd_en,
    input wire empty,
    output reg [DATA_SIZE-1:0] data_out
);
    reg [DATA_SIZE-1:0] mem [SIZE_FIFO-1:0];
    
    always@(posedge wclk) begin
        if(!wrst_n)begin
            for(int i = 0; i < SIZE_FIFO; i++) begin
                mem[i] <= 0;
            end
        end
        else begin
            if(~full && wtr_en)
                mem[wtr_ptr] <= data_in;
        end
    end

    always @(posedge rclk) begin
        if(!rrst_n)begin
            data_out = '0;
        end
        else begin
            if(~empty && rd_en) begin
                data_out = mem[rd_ptr];
            end
        end
    end

    // assign data_out = (~empty && rd_en) ? mem[rd_ptr] : '0;
endmodule
