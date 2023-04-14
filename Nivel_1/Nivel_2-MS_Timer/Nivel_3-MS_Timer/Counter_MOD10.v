module Counter_MOD10 (
    input wire loadn, clrn, clock, enable,
    input wire [3:0] data,
    output reg [3:0] ones, 
    output reg tc, zero
);

    initial 
    begin
        ones <= 0;    
    end

    always @(posedge clock or negedge clrn or negedge loadn) 
    begin
        if (!clrn)
            ones <= 4'b0000;
        else
        begin
            if (!loadn)
                ones <= data;
            else
            begin
                if (enable)
                begin
                    if (ones == 4'b0000)
                        ones <= 4'b1001;
                    else
                        ones <= ones - 1;
                end
            end
        end
    end

    always @(ones or enable)
    begin
        if (ones == 0)
            zero <= 1'b1;
        else
            zero <= 1'b0;
        if (ones == 0 && enable)
                tc <= 1'b1;
            else
                tc <= 1'b0;
    end
    
endmodule