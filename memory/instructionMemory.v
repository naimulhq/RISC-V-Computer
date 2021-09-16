module instructionMemory(input [31:0] address, output [31:0] instruction);
    reg [31:0] imem [0:255];
    assign instruction = imem[address];
endmodule