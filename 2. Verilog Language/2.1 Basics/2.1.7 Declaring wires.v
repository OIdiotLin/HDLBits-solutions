`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
); 
    wire t1;
    wire t2;
    wire t3;
    assign t1 = a & b;
    assign t2 = c & d;
    assign t3 = t1 | t2;
    assign out = t3;
    assign out_n = ~t3;
endmodule
