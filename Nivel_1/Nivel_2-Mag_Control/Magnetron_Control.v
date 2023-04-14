`include "..\\Nivel_3\\OnOff_Control.v"
`include "..\\Nivel_3\\SR_Latch.v"

module Magnetron_Control (input startn, stopn, clearn, door_closed, timer_done,
                          output mag_on);
    wire set, reset;
    
    OnOff_Control logica (startn, stopn, clearn, door_closed, timer_done, set, reset);
    SR_Latch memoria (set, reset, mag_on);
endmodule