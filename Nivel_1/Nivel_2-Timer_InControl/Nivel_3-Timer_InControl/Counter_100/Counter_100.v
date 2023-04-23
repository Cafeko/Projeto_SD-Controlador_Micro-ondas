module Counter_100 (input clock, output reg tic);
    reg [6:0] valor;

    initial 
    begin
        valor <= 0;
    end

    always @(posedge clock) 
    begin
        if (valor == 7'b1100011)
        begin
            valor <= 7'b0000000;
            tic <= 1'b1;
        end
        else
        begin
            valor <= valor + 1;
            tic <= 1'b0;
        end
    end
endmodule