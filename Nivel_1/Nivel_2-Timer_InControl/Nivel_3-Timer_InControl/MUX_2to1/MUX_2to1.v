module MUX_2to1 (input i0, i1, select, output out);
    assign out = (select == 0) ? i0 :
                  i1;
endmodule