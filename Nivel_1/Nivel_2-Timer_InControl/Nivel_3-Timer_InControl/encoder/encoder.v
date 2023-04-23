module encoder (
    input keypad0, keypad1, keypad2, keypad3, keypad4,
    keypad5, keypad6, keypad7, keypad8, keypad9, enablen,
    output reg valid, output reg [3:0] BCD_out 
);
    initial
    begin
        BCD_out <= 4'b1111;
    end

    always @(keypad0 or keypad1 or keypad2 or keypad3 or keypad4 or
    keypad5 or keypad6 or keypad7 or keypad8 or keypad9 or enablen)
    begin
        if (enablen == 0)
        begin
            if (keypad0)
                BCD_out = 4'b0000;
            else if (!keypad0 && keypad1)
                BCD_out = 4'b0001;
            else if (!keypad0 && !keypad1 && keypad2)
                BCD_out = 4'b0010;
            else if (!keypad0 && !keypad1 && !keypad2 && keypad3)
                BCD_out = 4'b0011;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && keypad4)
                BCD_out = 4'b0100;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && !keypad4 && keypad5)
                BCD_out = 4'b0101;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && !keypad4 && !keypad5 && keypad6)
                BCD_out = 4'b0110;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && !keypad4 && !keypad5 && !keypad6 && keypad7)
                BCD_out = 4'b0111;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && !keypad4 && !keypad5 && !keypad6 && !keypad7 && keypad8)
                BCD_out = 4'b1000;
            else if (!keypad0 && !keypad1 && !keypad2 && !keypad3 && !keypad4 && !keypad5 && !keypad6 && !keypad7 && !keypad8 && keypad9)
                BCD_out = 4'b1001;
            else
                BCD_out = 4'b1111;
            
            if (keypad0 || keypad1 || keypad2 || keypad3 || keypad4 || keypad5 || keypad6 || keypad7 || keypad8 || keypad9)
                valid = 0;
            else
                valid = 1;
        end
        else
            valid = 1;
    end
endmodule