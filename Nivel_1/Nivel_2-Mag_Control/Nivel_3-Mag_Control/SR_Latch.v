module SR_Latch (input wire S, R, output reg Q);
    reg NQ;

    always @(S or R)
    begin
        NQ = ~(S | Q);
        Q = ~(R | NQ);
        NQ = ~(S | Q);
    end
endmodule