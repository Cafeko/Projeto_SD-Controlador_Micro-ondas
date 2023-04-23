`timescale 1ns/1ps
`include "Delay.v"

module Delay_TB ();
    reg clk, clr;
    wire tc;


    Delay dut (clr, clk, tc);

    initial 
    begin
        $dumpfile("Delay_TB.vcd");
        $dumpvars(0,Delay_TB);

        #0 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 1;
        #1 clk = 1; clr = 1;
        #1 clk = 0; clr = 1;
        #1 clk = 1; clr = 1;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1 clk = 0; clr = 0;
        #1 clk = 1; clr = 0;
        #1;
    end
endmodule