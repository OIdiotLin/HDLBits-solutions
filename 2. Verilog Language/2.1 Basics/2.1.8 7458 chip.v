module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
    wire p1_and_1;
    wire p1_and_2;
    wire p2_and_1;
    wire p2_and_2;
    assign p2y = p2_and_1 | p2_and_2;
    assign p1y = p1_and_1 | p1_and_2;
    assign p1_and_1 = p1a & p1b & p1c;
    assign p1_and_2 = p1d & p1e & p1f;
    assign p2_and_1 = p2a & p2b;
    assign p2_and_2 = p2c & p2d;
endmodule
