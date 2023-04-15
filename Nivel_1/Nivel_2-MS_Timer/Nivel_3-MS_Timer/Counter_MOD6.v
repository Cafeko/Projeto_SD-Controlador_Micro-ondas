module Counter_MOD6 (
    input wire loadn, clrn, clock, enable,
    input wire [3:0] data,
    output reg [3:0] tens, 
    output reg tc, zero
);

    initial 
    begin
        tens <= 0;    
    end

    always @(posedge clock or negedge clrn or negedge loadn) 
    begin
        if (!clrn)
            tens <= 4'b0000;
        else
        begin
            if (!loadn)
                tens <= data;
            else
            begin
                if (enable)
                begin
                    if (tens == 4'b0000)
                        tens <= 4'b0101;
                    else
                        tens <= tens - 1;
                end
            end
        end
    end

    always @(tens or enable)
    begin
        if (tens == 0)
            zero <= 1'b1;
        else
            zero <= 1'b0;
        if (tens == 0 && enable)
                tc <= 1'b1;
            else
                tc <= 1'b0;
    end
    
endmodule