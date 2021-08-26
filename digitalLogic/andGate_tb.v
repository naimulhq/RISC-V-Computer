

module andGate_tb();

    reg a, b;
    wire out;

    andGate dut(a,b,out);

    initial begin
        $dumpfile("andGateWaveform.vcd");
        $dumpvars(0,andGate_tb);
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