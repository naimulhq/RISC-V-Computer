module OneBitAdder(input in1, in2, carry_in, output sum, carry_out);
    assign in1_xor_in2 = in1 ^ in2;
    assign in1_and_in2 = in1 & in2;
    assign sum = in1_xor_in2 ^ carry_in;
    assign carry_out = (in1_xor_in2 & carry_in) | (in1_and_in2);
endmodule