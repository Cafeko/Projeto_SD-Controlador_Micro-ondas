`timescale 1ns/1ps
`include "..\\Magnetron_Control.v"

module Magnetron_Control_TB ();
    reg Nstart, Nstop, Nclear, door_clo, time_over;
    wire mag_on;

    Magnetron_Control dut (Nstart, Nstop, Nclear, door_clo, time_over, mag_on);

    initial
    begin
        $dumpfile("Magnetron_Control_TB.vcd");
        $dumpvars(0,Magnetron_Control_TB);

        // Apeta start apenas
        #0 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;

        #1 Nstart <= 0; Nstop <= 0; Nclear <= 0; door_clo <= 0; time_over <= 0;
        #1;

        // Liga até tempo acabar

        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #4 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;
        
        #1 Nstart <= 0; Nstop <= 0; Nclear <= 0; door_clo <= 0; time_over <= 0;
        #1;

        // Abre a porta no meio
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 0; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;

        #1 Nstart <= 0; Nstop <= 0; Nclear <= 0; door_clo <= 0; time_over <= 0;
        #1;

        // Para no meio
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 0; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;

        #1 Nstart <= 0; Nstop <= 0; Nclear <= 0; door_clo <= 0; time_over <= 0;
        #1;

        // Start com porta aberta
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 0; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 0; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 0; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 0; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #1 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 0;
        #2 Nstart <= 1; Nstop <= 1; Nclear <= 1; door_clo <= 1; time_over <= 1;

        #1;
    end
endmodule