module SixteenBitAdder(input [15:0] in1, in2, input carry_in, output [15:0] sum, output carry_out);

    wire carry_outFBFA1, carry_outFBFA2, carry_outFBFA3;
    FourBitAdder FBFA1(in1[3:0], in2[3:0], carry_in, sum[3:0], carry_outFBFA1);
    FourBitAdder FBFA2(in1[7:4], in2[7:4], carry_outFBFA_1, sum[7:4], carry_outFBFA2);
    FourBitAdder FBFA3(in1[11:8], in2[11:8], carry_outFBFA2, sum[11:8], carry_outFBFA3);
    FourBitAdder FBFA4(in1[15:12], in2[15:12], carry_outFBFA3, sum[15:12], carry_out);

endmodule