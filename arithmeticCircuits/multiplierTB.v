module multiplierTB();

    reg [15:0] in1, in2;
    wire [31:0] product;

    SixteenBitMultiplier DUT(in1,in2,product);

    initial begin
        $dumpfile("MultiplierWaveform.vcd");
        $dumpvars(0,multiplierTB);

        // 7 * 7 = 49
        in1 = 16'b0000000000000111;
        in2 = 16'b0000000000000111;
        #10;

        // 34090 * 51537 = 1756896330
        in1 = 16'b1000010100101010;
        in2 = 16'b1100100101010001;
        #10;
    end
endmodule