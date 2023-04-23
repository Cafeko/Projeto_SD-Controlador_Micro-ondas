`include "Nivel_3-MS_Timer\\Counter_MOD10\\Counter_MOD10.v"
`include "Nivel_3-MS_Timer\\Counter_MOD6\\Counter_MOD6.v"

module MS_Timer(
    input [3:0] data,
    input loadn, clrn, clock, enable,
    output [3:0] sec_ones, sec_tens, mins,
    output reg zero);

    wire tc1, zero1, tc2, zero2, tc3, zero3; 

    Counter_MOD10 C1 (loadn, clrn, clock, enable, data, sec_ones, tc1, zero1);
    Counter_MOD6 C2 (loadn, clrn, clock, tc1, sec_ones, sec_tens, tc2, zero2);
    Counter_MOD10 C3 (loadn, clrn, clock, tc2, sec_tens, mins, tc3, zero3);

    always @(zero1 or zero2 or zero3)
    begin
       zero <= zero1 & zero2 & zero3;
    end

endmodule