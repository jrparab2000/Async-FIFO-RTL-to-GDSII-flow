`timescale 1ns/1ps

module async_fifo_tb;

    // ==========================================
    // 1. Parameters & Signals
    // ==========================================
    parameter SIZE_FIFO = 8;
    parameter DATA_SIZE = 32;
    
    // Write Domain Ports
    logic wclk;
    logic wrst_n;
    logic wtr_en;
    logic [DATA_SIZE-1:0] data_in;
    logic full;

    // Read Domain Ports
    logic rclk;
    logic rrst_n;
    logic rd_en;
    logic [DATA_SIZE-1:0] data_out;
    logic empty;

    // Verification Scoreboard (Golden Model Queue)
    logic [DATA_SIZE-1:0] scoreboard_q[$:(SIZE_FIFO-1)];
    logic queue_full;
    int match_count = 0;
    int total_count = 0;
    int error_count = 0;

    // ==========================================
    // 2. Device Under Test (DUT) Instantiation
    // ==========================================
    async_fifo #(
        .SIZE_FIFO(SIZE_FIFO),
        .DATA_SIZE(DATA_SIZE)
    ) dut (
        .wclk(wclk), .wrst_n(wrst_n), .wtr_en(wtr_en), .data_in(data_in), .full(full),
        .rclk(rclk), .rrst_n(rrst_n), .rd_en(rd_en), .data_out(data_out), .empty(empty)
    );

    // ==========================================
    // 3. Asynchronous Clock Generators
    // ==========================================
    // Write Clock: Fast Domain (~100MHz / 10ns period)
    always #5 wclk = ~wclk;

    // Read Clock: Slow Domain (~40MHz / 25ns period)
    always #5 rclk = ~rclk;

    // ==========================================
    // 4. Autonomous Scoreboard & Monitors
    // ==========================================
    
    // Monitor Write Actions
    always @(posedge wclk) begin
        queue_full = ((SIZE_FIFO) - scoreboard_q.size()) == 0;
        if (wtr_en && !full && wrst_n) begin
            total_count++;
            scoreboard_q.push_back(data_in); // Track what went in
        end
        
        // Overwrite Protection Check
        if (wtr_en && full && !queue_full && wrst_n) begin
            $error("[OVERWRITE ERROR] @ %0t ps: wtr_en asserted while FIFO is FULL! Data 0x%h dropped spaces in queue %0d.", $time, data_in, scoreboard_q.size());
            error_count++;
        end
    end

    // Monitor Read Actions & Check Data Integrity
    always @(posedge rclk) begin
        if (rd_en && !empty && rrst_n) begin
            logic [DATA_SIZE-1:0] expected_data;
            
            // Pop from golden model queue
            if (scoreboard_q.size() > 0) begin
                expected_data = scoreboard_q.pop_front();
                
                // Compare DUT output against Golden Model
                if (data_out === expected_data) begin
                    match_count++;
                end else begin
                    $error("[DATA CORRUPTION ERROR] @ %0t ps: Expected 0x%h, Got 0x%h", $time, expected_data, data_out);
                    error_count++;
                end
            end
        end

        // Underflow / Empty Protection Check
        if (rd_en && empty && !(scoreboard_q.size() == 0) && rrst_n) begin
            $error("[UNDERFLOW ERROR] @ %0t ps: rd_en asserted while FIFO is EMPTY! and queue has %0d elements", $time, scoreboard_q.size());
            error_count++;
        end
    end

    // ==========================================
    // 5. Test Stimulus Generation
    // ==========================================
    initial begin
        // Initialize signals
        wclk   = 0;
        rclk   = 0;
        wtr_en = 0;
        rd_en  = 0;
        data_in = 0;
        
        // Assert synchronous resets
        wrst_n = 0;
        rrst_n = 0;
        #40;
        wrst_n = 1;
        rrst_n = 1;
        #10;

        $display("\n--- TEST 1: Verifying Initial Power-On Flags ---");
        if (empty === 1'b1 && full === 1'b0) begin
            $display("[SUCCESS] FIFO booted safely into Empty state.");
        end else begin
            $error("[FAILURE] FIFO booted with incorrect flag states!");
            error_count++;
        end

        // -------------------------------------------------------------
        $display("\n--- TEST 2: Writing Until FULL (Fast Write Domain) ---");
        @(posedge wclk);
        
        // Write SIZE_FIFO elements
        for (int i = 1; i <= SIZE_FIFO; i++) begin
            wtr_en  = 1;
            data_in = 32'hAAAA_0000 + i;
            @(posedge wclk);
        end
        wtr_en = 0;
        
        // Give synchronization paths a few cycles to update flags
        repeat(5) @(posedge wclk);
        
        if (full === 1'b1) begin
            $display("[SUCCESS] FIFO is verified FULL after %0d writes.", SIZE_FIFO);
        end else begin
            $error("[FAILURE] FIFO failed to raise the FULL flag!");
            error_count++;
        end

        // -------------------------------------------------------------
        $display("\n--- TEST 3: Attempting Illegal Overwrite ---");
        @(posedge wclk);
        wtr_en  = 1;
        data_in = 32'hDEAD_BEEF; // This should be dropped/blocked by DUT
        @(posedge wclk);
        wtr_en  = 0;

        // -------------------------------------------------------------
        $display("\n--- TEST 4: Reading Until EMPTY (Slow Read Domain) ---");
        @(posedge rclk);
        
        // Read out all data elements
        while (!empty) begin
            rd_en = 1;
            @(posedge rclk);
        end
        rd_en = 0;
        
        repeat(5) @(posedge rclk);
        
        if (empty === 1'b1) begin
            $display("[SUCCESS] FIFO is verified EMPTY after draining.");
        end else begin
            $error("[FAILURE] FIFO failed to clear and return to EMPTY!");
            error_count++;
        end

        // -------------------------------------------------------------
        $display("\n--- TEST 5: Attempting Illegal Underflow Read ---");
        @(posedge rclk);
        rd_en = 1;
        @(posedge rclk);
        rd_en = 0;

        // -------------------------------------------------------------
        $display("\n--- TEST 6: Simultaneous Burst Transmissions ---");
        $display("Simulating high-throughput background transactions across asymmetric clocks...");
        
        // Fork off concurrent asynchronous reads and writes
        fork
            // Write process
            begin
                for (int j = 0; j < 50; j++) begin
                    if (!full) begin
                        wtr_en  = 1;
                        data_in = $urandom();
                    end else begin
                        wtr_en  = 0;
                    end
                    @(posedge wclk);
                end
                wtr_en = 0;
            end
            
            // Read process
            begin
                for (int k = 0; k < 50; k++) begin
                    if (!empty) begin
                        rd_en = 1;
                    end else begin
                        rd_en = 0;
                    end
                    @(posedge rclk);
                end
                rd_en = 0;
            end
        join

        // Wait out final cross-domain synchronization steps
        repeat(10) @(posedge rclk);

        // ==========================================
        // 6. Simulation Final Report Card
        // ==========================================
        $display("\n=======================================================");
        $display("             FIFO SIMULATION REPORT CARD              ");
        $display("=======================================================");
        $display(" Total Successful Packet Transfers: %0d out of %0d", match_count, total_count);
        $display(" Total Simulation Violations/Errors: %0d", error_count);
        $display("=======================================================");
        if (error_count == 0 && match_count > 0) begin
            $display(" RESULT: PASSED! FIFO architecture is functionally robust.");
        end else begin
            $display(" RESULT: FAILED! Check log dump statements listed above.");
        end
        $display("=======================================================\n");
        
        $finish;
    end

endmodule