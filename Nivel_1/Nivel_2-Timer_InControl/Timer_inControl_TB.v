//`timescale 1ns/1ps
`include "Timer_InControl.v"

module Timer_InControl_TB ();
    reg [9:0] keypad;
    reg Nenable, clock;
    wire [3:0] dados;
    wire loadn, pgt_1Hz;


    Timer_InControl dut (keypad[0], keypad[1], keypad[2], keypad[3], keypad[4], keypad[5], keypad[6],
                          keypad[7], keypad[8], keypad[9], Nenable, clock, dados, loadn, pgt_1Hz);

    initial 
    begin
        $dumpfile("Timer_InControl_TB.vcd");
        $dumpvars(0,Timer_InControl_TB);

        #0 clock = 0; keypad = 10'b0000000000; Nenable = 0;
        #1;
        #1;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000;
        #1 keypad = 10'b0010000000; Nenable = 1;
        #1 keypad = 10'b0010000000; Nenable = 1;
        #1 keypad = 10'b0010000000; Nenable = 1;
        #1 keypad = 10'b0010000000; Nenable = 1;

        #1;
        $stop;
    end

    always
    begin
        #1 clock = ~clock;
    end
endmodule