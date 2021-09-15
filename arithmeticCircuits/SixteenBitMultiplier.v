module SixteenBitMultiplier(input [15:0] in1, in2, output [31:0] product);
    

    // 0 0 -> 0
    // 0 1 -> 0
    // 1 0 -> 0
    // 1 1 -> 1

    wire carry_outSBFA1, carry_outSBFA2, carry_outSBFA3, carry_outSBFA4, carry_outSBFA5, carry_outSBFA6, carry_outSBFA7, carry_outSBFA8;
    wire carry_outSBFA9, carry_outSBFA10, carry_outSBFA11, carry_outSBFA12, carry_outSBFA13, carry_outSBFA14, carry_outSBFA15;
    wire [15:0] sumSBFA1, sumSBFA2, sumSBFA3, sumSBFA4, sumSBFA5, sumSBFA6, sumSBFA7, sumSBFA8, sumSBFA9, sumSBFA10;
    wire [15:0] sumSBFA11, sumSBFA12, sumSBFA13, sumSBFA14, sumSBFA15;


    wire [15:0] B0 = in1[15:0] & {16{in2[0]}};
    wire [15:0] B1 = in1[15:0] & {16{in2[1]}};
    wire [15:0] B2 = in1[15:0] & {16{in2[2]}};
    wire [15:0] B3 = in1[15:0] & {16{in2[3]}};
    wire [15:0] B4 = in1[15:0] & {16{in2[4]}};
    wire [15:0] B5 = in1[15:0] & {16{in2[5]}};
    wire [15:0] B6 = in1[15:0] & {16{in2[6]}};
    wire [15:0] B7 = in1[15:0] & {16{in2[7]}};
    wire [15:0] B8 = in1[15:0] & {16{in2[8]}};
    wire [15:0] B9 = in1[15:0] & {16{in2[9]}};
    wire [15:0] B10 = in1[15:0] & {16{in2[10]}};
    wire [15:0] B11 = in1[15:0] & {16{in2[11]}};
    wire [15:0] B12 = in1[15:0] & {16{in2[12]}};
    wire [15:0] B13 = in1[15:0] & {16{in2[13]}};
    wire [15:0] B14 = in1[15:0] & {16{in2[14]}};
    wire [15:0] B15 = in1[15:0] & {16{in2[15]}};

    assign product[0] = B0[0];
    
    SixteenBitAdder SBFA1({1'b0,B0[15:1]}, B1, 1'b0, sumSBFA1, carry_outSBFA1);
    assign product[1] = sumSBFA1[0];

    SixteenBitAdder SBFA2({carry_outSBFA1,sumSBFA1[15:1]}, B2, 1'b0, sumSBFA2, carry_outSBFA2);
    assign product[2] = sumSBFA2[0];

    SixteenBitAdder SBFA3({carry_outSBFA2,sumSBFA2[15:1]}, B3, 1'b0, sumSBFA3, carry_outSBFA3);
    assign product[3] = sumSBFA3[0];

    SixteenBitAdder SBFA4({carry_outSBFA3,sumSBFA3[15:1]}, B4, 1'b0, sumSBFA4, carry_outSBFA4);
    assign product[4] = sumSBFA4[0];

    SixteenBitAdder SBFA5({carry_outSBFA4,sumSBFA4[15:1]}, B5, 1'b0, sumSBFA5, carry_outSBFA5);
    assign product[5] = sumSBFA5[0];

    SixteenBitAdder SBFA6({carry_outSBFA5,sumSBFA5[15:1]}, B6, 1'b0, sumSBFA6, carry_outSBFA6);
    assign product[6] = sumSBFA6[0];

    SixteenBitAdder SBFA7({carry_outSBFA6,sumSBFA6[15:1]}, B7, 1'b0, sumSBFA7, carry_outSBFA7);
    assign product[7] = sumSBFA7[0];

    SixteenBitAdder SBFA8({carry_outSBFA7,sumSBFA7[15:1]}, B8, 1'b0, sumSBFA8, carry_outSBFA8);
    assign product[8] = sumSBFA8[0];

    SixteenBitAdder SBFA9({carry_outSBFA8,sumSBFA8[15:1]}, B9, 1'b0, sumSBFA9, carry_outSBFA9);
    assign product[9] = sumSBFA9[0];

    SixteenBitAdder SBFA10({carry_outSBFA9,sumSBFA9[15:1]}, B10, 1'b0, sumSBFA10, carry_outSBFA10);
    assign product[10] = sumSBFA10[0];

    SixteenBitAdder SBFA11({carry_outSBFA10,sumSBFA10[15:1]}, B11, 1'b0, sumSBFA11, carry_outSBFA11);
    assign product[11] = sumSBFA11[0];

    SixteenBitAdder SBFA12({carry_outSBFA11,sumSBFA11[15:1]}, B12, 1'b0, sumSBFA12, carry_outSBFA12);
    assign product[12] = sumSBFA12[0];

    SixteenBitAdder SBFA13({carry_outSBFA12,sumSBFA12[15:1]}, B13, 1'b0, sumSBFA13, carry_outSBFA13);
    assign product[13] = sumSBFA13[0];

    SixteenBitAdder SBFA14({carry_outSBFA13,sumSBFA13[15:1]}, B14, 1'b0, sumSBFA14, carry_outSBFA14);
    assign product[14] = sumSBFA14[0];

    SixteenBitAdder SBFA15({carry_outSBFA14,sumSBFA14[15:1]}, B15, 1'b0, sumSBFA15, carry_outSBFA15);
    assign product[30:15] = sumSBFA15;
    assign product[31] = carry_outSBFA15;
    

endmodule