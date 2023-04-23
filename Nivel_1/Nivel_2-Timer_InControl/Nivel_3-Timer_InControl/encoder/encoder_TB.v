`timescale 1ns/1ps
`include "encoder.v"

module encoder_TB ();
    reg [9:0] keypad;
    reg Nenable;
    wire Valid;
    wire [3:0] BCD;

    encoder dut (keypad[0], keypad[1], keypad[2], keypad[3], keypad[4], keypad[5], keypad[6],
                          keypad[7], keypad[8], keypad[9], Nenable, Valid, BCD);

    initial 
    begin
        $dumpfile("encoder_TB.vcd");
        $dumpvars(0,encoder_TB);

        #0 keypad = 10'b0000000000; Nenable = 1;
        #1 keypad = 10'b0000000000; Nenable = 0;
        #1 keypad = 10'b1000000000; Nenable = 0;
        #1 keypad = 10'b0000000000; Nenable = 0;
        #1 keypad = 10'b0100000000; Nenable = 0;
        #1 keypad = 10'b0010000000; Nenable = 0;
        #1 keypad = 10'b0000100000; Nenable = 0;
        #1 keypad = 10'b0001000000; Nenable = 0;
        #1 keypad = 10'b0000010000; Nenable = 0;
        #1 keypad = 10'b0000000000; Nenable = 0;
        #1 keypad = 10'b0000001000; Nenable = 0;
        #1 keypad = 10'b0000000100; Nenable = 0;
        #1 keypad = 10'b0000000100; Nenable = 1;
        #1 keypad = 10'b0000000000; Nenable = 0;
        #1 keypad = 10'b0000001100; Nenable = 0;
        #1 keypad = 10'b0000000010; Nenable = 0;
        #1 keypad = 10'b0000000001; Nenable = 0;
        #1 keypad = 10'b0000000000; Nenable = 0;
        #1;

    end
endmodule