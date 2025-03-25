module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire p1ap1bp1c, p1fp1ep1d, p2ap2b, p2cp2d;
    assign p1ap1bp1c = (p1a && p1b && p1c );
    assign p1fp1ep1d = (p1f && p1e && p1d);
    assign p2ap2b = (p2a && p2b);
    assign p2cp2d = (p2c && p2d);
    assign p1y = (p1ap1bp1c ^ p1fp1ep1d);
    assign p2y = (p2ap2b ^ p2cp2d);

endmodule