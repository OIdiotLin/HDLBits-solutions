module top_module ( input clk, input d, output q );
    wire t1;
    wire t2;
    my_dff dff1(.clk(clk), .d(d), .q(t1));
    my_dff dff2(.clk(clk), .d(t1), .q(t2));
    my_dff dff3(.clk(clk), .d(t2), .q(q));
endmodule
