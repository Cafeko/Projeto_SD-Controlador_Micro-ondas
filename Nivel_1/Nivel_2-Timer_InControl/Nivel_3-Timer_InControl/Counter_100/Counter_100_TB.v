//`timescale 1ns/1ps
`include "Counter_100.v"

module Counter_100_TB ();
    reg clk;
    wire tc;
    reg count;


    Counter_100 dut (clk, tc);

    initial 
    begin
        $dumpfile("Counter_100_TB.vcd");
        $dumpvars(0,Counter_100_TB);

        count = 0;
        while (count < 1)
        begin
            if (clk == 0)
                clk = 1;
            else
                clk = 0;
            
            if (tc == 1)
                count <= count + 1;
            #1;
        end
        clk <= 1;
        #2;
    end
endmodule