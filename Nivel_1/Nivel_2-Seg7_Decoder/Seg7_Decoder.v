module Seg7_Decoder (
    input [3:0] sec_ones, sec_tens, mins,
    output [6:0] sec_ones_seg, sec_tens_seg, mins_seg);

    Decoder Ones (sec_ones, sec_ones_seg);
    Decoder Tens (sec_tens, sec_tens_seg);
    Decoder Mins (mins, mins_seg);

endmodule

module Decoder (input [3:0] entrada, output [6:0] saida);

    assign saida = (entrada == 0) ? 7'b1111110 :
                   (entrada == 1) ? 7'b0110000 :
                   (entrada == 2) ? 7'b1101101 :
                   (entrada == 3) ? 7'b1111001 :
                   (entrada == 4) ? 7'b0110011 :
                   (entrada == 5) ? 7'b1011011 :
                   (entrada == 6) ? 7'b0011111 :
                   (entrada == 7) ? 7'b1110000 :
                   (entrada == 8) ? 7'b1111111 :
                   (entrada == 9) ? 7'b1110011 :
                   7'b0000000;
endmodule