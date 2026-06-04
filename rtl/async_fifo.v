module async_fifo #(parameter SIZE_FIFO = 8, parameter DATA_SIZE = 32) (
    input wire wclk,
    input wire wrst_n,
    input wire rclk,
    input wire rrst_n,
    input wire [DATA_SIZE-1:0] data_in,
    input wire wtr_en,
    input wire rd_en,
    output wire full,
    output wire empty,
    output wire [DATA_SIZE-1:0] data_out
);
    localparam SIZE = $clog2(SIZE_FIFO);
    wire [SIZE:0] rd_b_ptr, wtr_b_ptr, rd_g_ptr, wtr_g_ptr, rd_g_ptr_ff, wtr_g_ptr_ff;
    wire full_i, empty_i;
    wire [DATA_SIZE-1:0] data_out_i;

    mem #(.SIZE_FIFO(SIZE_FIFO), .DATA_SIZE(DATA_SIZE)) memory (.wclk(wclk), .wrst_n(wrst_n), .rclk(rclk), .rrst_n(rrst_n),.data_in(data_in), .wtr_ptr(wtr_b_ptr[SIZE-1:0]), .full(full_i), .wtr_en(wtr_en), .rd_ptr(rd_b_ptr[SIZE-1:0]), .rd_en(rd_en), .empty(empty_i), .data_out(data_out_i));
    wtr_ptr #(.SIZE(SIZE)) write_pointer (.clk(wclk), .rst_n(wrst_n), .wtr_en(wtr_en), .ptr_g_in(rd_g_ptr_ff), .ptr_g_out(wtr_g_ptr), .ptr_b_out(wtr_b_ptr), .full(full_i));
    rd_ptr #(.SIZE(SIZE)) read_pointer (.clk(rclk), .rst_n(rrst_n), .rd_en(rd_en), .ptr_g_in(wtr_g_ptr_ff), .ptr_g_out(rd_g_ptr), .ptr_b_out(rd_b_ptr), .empty(empty_i));
    ff_2_sync #(.SIZE(SIZE)) ff_2_write (.clk(rclk), .rst_n(rrst_n), .din(wtr_g_ptr), .dout(wtr_g_ptr_ff));
    ff_2_sync #(.SIZE(SIZE)) ff_2_read (.clk(wclk), .rst_n(wrst_n), .din(rd_g_ptr), .dout(rd_g_ptr_ff));

    assign full = full_i;
    assign empty = empty_i;
    assign data_out = data_out_i;
endmodule
