`timescale 1ns/1ps
`include "Seg7_Decoder.v"

module Seg7_Decoder_TB ();
    reg [3:0] sec_ones, sec_tens, mins;
    wire [6:0] saida_ones, saida_tens, saida_mins;

    Seg7_Decoder dut (sec_ones, sec_tens, mins, saida_ones, saida_tens, saida_mins);

    initial
    begin
        $dumpfile("Seg7_Decoder_TB.vcd");
        $dumpvars(0,Seg7_Decoder_TB);

        #0 sec_ones = 4'b0000; sec_tens = 4'b0000; mins = 4'b0000;
        #1 sec_ones = 4'b0001; sec_tens = 4'b0001; mins = 4'b0001;
        #1 sec_ones = 4'b0010; sec_tens = 4'b0010; mins = 4'b0010;
        #1 sec_ones = 4'b0011; sec_tens = 4'b0011; mins = 4'b0011;
        #1 sec_ones = 4'b0100; sec_tens = 4'b0100; mins = 4'b0100;
        #1 sec_ones = 4'b0101; sec_tens = 4'b0101; mins = 4'b0101;
        #1 sec_ones = 4'b0110; sec_tens = 4'b0110; mins = 4'b0110;
        #1 sec_ones = 4'b0111; sec_tens = 4'b0111; mins = 4'b0111;
        #1 sec_ones = 4'b1000; sec_tens = 4'b1000; mins = 4'b1000;
        #1 sec_ones = 4'b1001; sec_tens = 4'b1001; mins = 4'b1001;
        #1 sec_ones = 4'b1010; sec_tens = 4'b1010; mins = 4'b1010;
        #1;

    end
endmodule