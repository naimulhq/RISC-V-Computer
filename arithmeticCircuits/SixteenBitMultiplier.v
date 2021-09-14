module SixteenBitMultiplier(input [15:0] in1, in2, output [31:0] product);
    

    // 0 0 -> 0
    // 0 1 -> 0
    // 1 0 -> 0
    // 1 1 -> 1
    assign product[0] = in1[0] & in2[0];

    SixteenBitAdder SBFA1();
    SixteenBitAdder SBFA2();
    SixteenBitAdder SBFA3();
    SixteenBitAdder SBFA4();
    SixteenBitAdder SBFA5();
    SixteenBitAdder SBFA6();
    SixteenBitAdder SBFA7();
    SixteenBitAdder SBFA8();
    SixteenBitAdder SBFA9();
    SixteenBitAdder SBFA10();
    SixteenBitAdder SBFA11();
    SixteenBitAdder SBFA12();
    SixteenBitAdder SBFA13();
    SixteenBitAdder SBFA14();
    SixteenBitAdder SBFA15();
    SixteenBitAdder SBFA16();

endmodule