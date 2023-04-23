`timescale 1ns/1ps
`include "MUX_2to1.v"

module MUX_2to1_TB ();
    reg sel, I0, I1;
    wire Out;

    MUX_2to1 dut (I0, I1, sel, Out);

    initial 
    begin
        $dumpfile("MUX_2to1_TB.vcd");
        $dumpvars(0,MUX_2to1_TB);

        #0 I0 <= 0; I1 <= 0; sel = 0;
        #1 I0 <= 0; I1 <= 1; sel = 0;
        #1 I0 <= 0; I1 <= 1; sel = 1;
        #1 I0 <= 0; I1 <= 0; sel = 0;
        #1 I0 <= 1; I1 <= 0; sel = 0;
        #1 I0 <= 0; I1 <= 0; sel = 1;
        #1;
    end
endmodule