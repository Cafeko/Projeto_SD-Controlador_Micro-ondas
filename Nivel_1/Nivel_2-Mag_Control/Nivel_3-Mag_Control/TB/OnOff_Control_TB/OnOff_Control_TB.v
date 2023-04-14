`timescale 1ns/1ps
`include "..\\..\\OnOff_Control.v"

module OnOff_Control_TB ();
    reg Nstart, Nstop, Nclear, door_clo, time_over;
    wire s, r;

    OnOff_Control dut (Nstart, Nstop, Nclear, door_clo, time_over, s, r);

    initial
    begin
        $dumpfile("OnOff_Control_TB.vcd");
        $dumpvars(0,OnOff_Control_TB);

        // Apeta start apenas
        #0 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;
        #1 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;

        #1 Nstart = 0; Nstop = 0; Nclear = 0; door_clo = 0; time_over = 0;
        #1;

        // Liga até tempo acabar

        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #4 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;
        
        #1 Nstart = 0; Nstop = 0; Nclear = 0; door_clo = 0; time_over = 0;
        #1;

        // Abre a porta no meio
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #2 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 0; time_over = 0;
        #2 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #2 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;

        #1 Nstart = 0; Nstop = 0; Nclear = 0; door_clo = 0; time_over = 0;
        #1;

        // Para no meio
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 0; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #2 Nstart = 0; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #1 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 0;
        #2 Nstart = 1; Nstop = 1; Nclear = 1; door_clo = 1; time_over = 1;

        #1;
    end
endmodule