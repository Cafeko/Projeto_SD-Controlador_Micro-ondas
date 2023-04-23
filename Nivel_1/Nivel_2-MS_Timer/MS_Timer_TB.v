`timescale 1ns/1ps
`include "MS_Timer.v"

module MS_Timer_TB ();
    reg [3:0] data;
    reg loadn, clrn, clock, enable;
    wire [3:0] sec_ones, sec_tens, mins;
    wire zero;

    MS_Timer dut (data, loadn, clrn, clock, enable, sec_ones, sec_tens, mins, zero);

    initial
    begin
        $dumpfile("MS_Timer_TB.vcd");
        $dumpvars(0,MS_Timer_TB);

        #0 loadn <= 1; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 0; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0010;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;
        #1 loadn <= 0; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 0; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;
        #1 loadn <= 0; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b1001;
        #1 loadn <= 0; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b1001;
        #1 loadn <= 0; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 0; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 0; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 1; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 0; clock <= 0; enable <= 0; data <= 4'b0000;
        #1 loadn <= 1; clrn <= 1; clock <= 1; enable <= 0; data <= 4'b0000;

        #2;

        
    end
endmodule