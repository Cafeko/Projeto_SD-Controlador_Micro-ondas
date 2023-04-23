`include "Nivel_2-Mag_Control\\Magnetron_Control.v"
`include "Nivel_2-MS_Timer\\MS_Timer.v"
`include "Nivel_2-Seg7_Decoder\\Seg7_Decoder.v"
`include "Nivel_2-Timer_InControl\\Timer_InControl.v"

module Microwave_Controller (
    input keypad0, keypad1, keypad2, keypad3, keypad4, keypad5, keypad6,
    keypad7, keypad8, keypad9, startn, stopn, clearn, door_closed, clock,
    output mag_on, output [6:0] sec_ones_seg, sec_tens_seg, mins_seg
);

    wire loadn, clock_wire, zero;
    wire [3:0] dados, sec_ones, sec_tens, mins;
    
    Timer_InControl timer_control (keypad0, keypad1, keypad2, keypad3, keypad4, keypad5,
    keypad6, keypad7, keypad8, keypad9, mag_on, clock, dados, loadn, clock_wire);

    MS_Timer timer_counter (dados, loadn, clearn, clock_wire, mag_on, sec_ones, sec_tens, mins, zero);

    Magnetron_Control mag_control (startn, stopn, clearn, door_closed, zero, mag_on);

    Seg7_Decoder decoder_7seg (sec_ones, sec_tens, mins, sec_ones_seg, sec_tens_seg, mins_seg);

endmodule