`include "Nivel_2-Timer_InControl\\Nivel_3-Timer_InControl\\Counter_100\\Counter_100.v"
`include "Nivel_2-Timer_InControl\\Nivel_3-Timer_InControl\\Delay\\Delay.v"
`include "Nivel_2-Timer_InControl\\Nivel_3-Timer_InControl\\encoder\\encoder.v"
`include "Nivel_2-Timer_InControl\\Nivel_3-Timer_InControl\\MUX_2to1\\MUX_2to1.v"

module Timer_InControl (
    input keypad0, keypad1, keypad2, keypad3, keypad4, keypad5,
    keypad6, keypad7, keypad8, keypad9, enablen, clock_100Hz,
    output [3:0] D, output loadn, pgt_1Hz
);
    wire Hz1, delay_valor;
    
    encoder prority_encoder (keypad0, keypad1, keypad2, keypad3, keypad4, keypad5,
    keypad6, keypad7, keypad8, keypad9, enablen, loadn, D);
    Counter_100 divide_100 (clock_100Hz, Hz1);
    Delay delay_counter (loadn, clock_100Hz, delay_valor);
    MUX_2to1 mux2to1 (delay_valor, Hz1, enablen, pgt_1Hz);
endmodule