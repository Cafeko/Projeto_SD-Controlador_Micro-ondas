`timescale 1ns/1ps
`include "Microwave_Controller.v"

module Microwave_Controller_TB ();
    reg [9:0] keypad;
    reg startn, stopn, clearn, door_closed, clock;
    wire mag_on;
    wire [6:0] sec_ones_seg, sec_tens_seg, mins_seg;

    Microwave_Controller dut (keypad[0], keypad[1], keypad[2], keypad[3], keypad[4], keypad[5], keypad[6],
    keypad[7], keypad[8], keypad[9], startn, stopn, clearn, door_closed, clock, mag_on, sec_ones_seg,
    sec_tens_seg, mins_seg);

    initial 
    begin
        $dumpfile("Microwave_Controller_TB.vcd");
        $dumpvars(0,Microwave_Controller_TB);

        #0 clock = 0; keypad = 10'b0000000000; startn = 1; stopn = 1; clearn = 1; door_closed = 1;
        #1 keypad = 10'b0000000010;
        #14;
        #1 keypad = 10'b0000000000;
        #1 keypad = 10'b0000010000;
        #14;
        #1 keypad = 10'b0000000000;
        #1 keypad = 10'b0000000001;
        #14;
        #1 keypad = 10'b0000000000;
        #1 startn = 0;
        #1 startn = 1;
        #21000;
        #1 keypad = 10'b1000000000;
        #14;
        #1 keypad = 10'b0000000000;
        #1 keypad = 10'b1000000000;
        #14;
        #1 keypad = 10'b0000000000;
        #1 keypad = 10'b1000000000;
        #14;
        #1 keypad = 10'b0000000000;
        #1 startn = 0;
        #1 startn = 1;
        #30000;
        #1 stopn = 0;
        #1 stopn = 1;
        #500;
        #1 startn = 0;
        #1 startn = 1;
        #500;
        #1 door_closed = 0;
        #100 door_closed = 1;
        #1 startn = 0;
        #1 startn = 1;
        #500;
        #1 clearn = 0;
        #1 clearn = 1;
        #50;

        #1;
        $stop;
    end

    always
    begin
        #1 clock = ~clock;
    end
endmodule