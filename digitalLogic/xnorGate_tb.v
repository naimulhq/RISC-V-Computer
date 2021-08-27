module xnorGate_tb();

    reg a,b;
    wire out;
    xnorGate dut(a,b,out);

    initial begin
        $dumpfile("xnorGateWaveform.vcd");
        $dumpvars(0,xnorGate_tb);
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