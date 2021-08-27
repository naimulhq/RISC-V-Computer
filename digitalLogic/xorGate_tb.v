module xorGate_tb();

    reg a,b;
    wire out;
    xorGate dut(a,b,out);

    initial begin
        $dumpfile("xorGateWaveform.vcd");
        $dumpvars(0,xorGate_tb);
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