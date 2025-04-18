module top_module( 
    input [7:0] in,
    output [7:0] out
);
    function [7:0] bit_reverse (input [7:0] data);
        integer i;
        begin
            for (i=0;i<8;i=i+1)
                begin
                    bit_reverse[7-i] = data[i];
                end
        end
    endfunction
        assign out=bit_reverse(in);

endmodule