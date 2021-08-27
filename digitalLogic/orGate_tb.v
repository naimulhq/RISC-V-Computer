

module orGate_tb();

    reg a, b;
    wire out;

    orGate dut(a,b,out);

    initial begin
        $dumpfile("orGateWaveform.vcd");
        $dumpvars(0,orGate_tb);
        a = 1'b0;
        b = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b1;
        #10;

        a = 1'b1;
        b = 1'b0;
        #10;

        a = 1'b1;
        b = 1'b1;
        #10;
        $finish;
    end
endmodule