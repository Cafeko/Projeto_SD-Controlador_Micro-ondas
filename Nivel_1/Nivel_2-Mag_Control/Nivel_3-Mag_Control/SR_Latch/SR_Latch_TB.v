`timescale 1ns/1ps
`include "SR_Latch.v"

module SR_Latch_TB ();
    reg s, r;
    wire q;

    SR_Latch dut (.S(s), .R(r), .Q(q));

    initial
    begin
        $dumpfile("SR_Latch_TB.vcd");
        $dumpvars(0,SR_Latch_TB);

        s <= 0; r <= 0;
        s <=#1 1;
        s <=#3 0;
        r <=#6 1;
        r <=#8 0;
        s <=#9 1;
        s <=#10 0;
        s <=#14 1; r <=#14 1;
        s <=#15 0;
        s <=#16 1;
        r <=#18 0;
        s <=#19 0;
        s <=#20 1; r <=#20 1;
        s <=#22 0; r <=#22 0;
        #24;
    end
endmodule