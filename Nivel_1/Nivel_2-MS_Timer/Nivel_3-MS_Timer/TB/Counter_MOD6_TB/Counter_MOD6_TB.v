`timescale 1ns/1ps
`include "..\\..\\Counter_MOD6.v"

module Counter_MOD6_TB ();
    reg load, clear, clk, enab;
    reg [3:0] numero;
    wire [3:0] numero_saida;
    wire tc_saida, zero_saida;

    Counter_MOD6 dut (load, clear, clk, enab, numero, numero_saida, tc_saida, zero_saida);

    initial 
    begin
        $dumpfile("Counter_MOD6_TB.vcd");
        $dumpvars(0,Counter_MOD6_TB);

        // Conta
        #0 load <= 1; clear <= 1; clk <= 0; enab <= 0; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;

        #1 load <= 1; clear <= 0; clk <= 0; enab <= 0; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 0; numero <= 4'b0000;

        // Teste load e tc
        #1 load <= 0; clear <= 1; clk <= 0; enab <= 0; numero <= 4'b0011;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0100;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 1; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 0; enab <= 0; numero <= 4'b0000;
        #1 load <= 1; clear <= 1; clk <= 1; enab <= 0; numero <= 4'b0000;
        
        #2;

    end
endmodule