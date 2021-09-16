module registerfile(input [31:0] write_data, input [4:0] rs1, rs2, rd, input RegWrite, output [31:0] outRS1, outRS2);
    reg [31:0] regfile [31:0];
    assign outRS1 = regfile[rs1];
    assign outRS2 = regfile[rs2];
    always@(*)
    begin
        if(RegWrite == 1'b1)
            regfile[rd] = write_data;
    end

endmodule