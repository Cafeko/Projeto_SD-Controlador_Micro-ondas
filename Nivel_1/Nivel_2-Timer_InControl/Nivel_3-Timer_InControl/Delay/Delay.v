module Delay (input clear, clock, output reg saida);
    reg [2:0] valor;

    initial
    begin
        valor <= 3'b000;
        saida <= 0;
    end

    always @(posedge clock or posedge clear) 
    begin
        if (clear)
        begin
            valor <= 3'b000;
            saida <= 0;
        end
        else
        begin
            if (valor == 3'b111)
                valor <= 3'b111;
            else if (valor == 3'b011)
            begin
                valor <= valor + 1;
                saida <= 1;
            end
            else
                valor <= valor + 1;
        end
    end
endmodule