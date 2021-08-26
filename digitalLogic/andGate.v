module andGate(input a, input b, output out);
    // & is bitwise, && is logical
    // a,b, and out are wires.
    // assign creates a connection between the wires.
    assign out = a & b;
endmodule