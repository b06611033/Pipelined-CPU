module Data_Memory
(
    clk_i, 
    addr_i, 
    MemRead_i,
    MemWrite_i,
    data_i,
    data_o
);

// Interface
input               clk_i;
input   [31:0]      addr_i;
input               MemRead_i;
input               MemWrite_i;
input   [31:0]      data_i;
output  [31:0]      data_o;

// data memory
reg signed     [31:0]     memory  [0:1023];        //changed to signed for correctness

// tmp
reg signed     [63:0]     tmp;                    //changed to signed for correctness

assign  data_o = MemRead_i? memory[addr_i >> 2] : 0;  //for lw, index = address/4

always @ (posedge clk_i) begin     //for sw, index = address/4
    if (MemWrite_i) begin
        // Unaligned write should be avoided. addr_i%4 must be 0.
        memory[addr_i >> 2] <= data_i;
    end
end

endmodule
