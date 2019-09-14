module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module B ( input x, input y, output z );
    assign z = ~(x ^ y);
endmodule

module top_module (input x, input y, output z);
    wire [3:0] tmp;

    A ia1(x, y, tmp[0]);
    B ib1(x, y, tmp[1]);
    A ia2(x, y, tmp[2]);
    B ib2(x, y, tmp[3]);

    assign z = (|tmp[1:0]) ^ (&tmp[3:2]);
endmodule
