module FourBitAdder(input [3:0] in1, in2, input carry_in, output [3:0] sum, output carry_out);

    // F1 - F8 where F1 is least four significant bits, F8 is most four significant bits
    wire carry_out_FA_1, carry_out_FA_2, carry_out_FA_3;
    OneBitAdder FA1(in1[0],in2[0],carry_in, sum[0], carry_out_FA_1);
    OneBitAdder FA2(in1[1], in2[1], carry_out_FA_1, sum[1], carry_out_FA_2);
    OneBitAdder FA3(in1[2], in2[2], carry_out_FA_2, sum[2], carry_out_FA_3);
    OneBitAdder FA4(in1[3], in2[3], carry_out_FA_3, sum[3], carry_out);

endmodule