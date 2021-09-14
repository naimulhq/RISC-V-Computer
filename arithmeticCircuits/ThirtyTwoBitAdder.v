module ThirtyTwoBitAdder(input [31:0] in1, in2, carry_in, output [31:0] sum, carry_out);

    // FBFA = Four Bit Full Adder, 1 - 8 where 1 is lsb and 8 is msb

    wire carry_out_FBFA1, carry_out_FBFA2, carry_out_FBFA3, carry_out_FBFA4, carry_out_FBFA5, carry_out_FBFA6, carry_out_FBFA7
    FourBitAdder FBFA1(in1[3:0], in2[3:0], carry_in, sum[3:0], carry_out_FBFA1);
    FourBitAdder FBFA2(in1[7:4], in2[7:4], carry_out_FBFA1, sum[7:4], carry_out_FBFA2);
    FourBitAdder FBFA3(in1[11:8], in2[11:8], carry_out_FBFA2, sum[11:8], carry_out_FBFA3);
    FourBitAdder FBFA4(in1[15:12], in2[15:12], carry_out_FBFA3, sum[15:12], carry_out_FBFA4);
    FourBitAdder FBFA5(in1[19:16], in2[19:16], carry_out_FBFA4, sum[19:16], carry_out_FBFA5);
    FourBitAdder FBFA6(in1[23:20], in2[23:20], carry_out_FBFA5, sum[23:20], carry_out_FBFA6);
    FourBitAdder FBFA7(in1[27:24], in2[27:24], carry_out_FBFA6, sum[27:24], carry_out_FBFA7);
    FourBitAdder FBFA8(in1[31:28], in2[31:28], carry_out_FBFA7, sum[31:28], carry_out);

endmodule