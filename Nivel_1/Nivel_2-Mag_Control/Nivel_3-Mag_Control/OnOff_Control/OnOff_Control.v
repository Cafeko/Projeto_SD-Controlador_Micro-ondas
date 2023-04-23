module OnOff_Control (input wire startn, stopn, clearn, door_closed, timer_done,
                       output reg Set, Reset);
    reg start, stop, clear;
    
    always @(startn or stopn or clearn or door_closed or timer_done)
    begin
        start = ~startn;
        stop = ~stopn;
        clear = ~clearn;

        Reset = stop | clear | ~door_closed | timer_done;
        Set = start & door_closed & ~Reset;
    end
endmodule