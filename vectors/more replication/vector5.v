module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out[24:20] = ~{5{a}} ^ {a,b,c,d,e};
    assign out[19:15] = ~{4{b}} ^ {a,b,c,d,e};
    assign out[14:10] = ~{4{c}} ^ {a,b,c,d,e};
    assign out[9:5] = ~{4{d}} ^ {a,b,c,d,e};
    assign out[4:0] = ~{4{e}} ^ {a,b,c,d,e};

endmodule
