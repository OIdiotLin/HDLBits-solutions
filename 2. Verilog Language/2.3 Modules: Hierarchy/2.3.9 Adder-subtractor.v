module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] result
);
    wire c_low;
    wire [31:0] sub_xor_b = b ^ {32{sub}};

    add16 add16_low(
        .a(a[15:0]),
        .b(sub_xor_b[15:0]),
        .cin(sub),
        .sum(result[15:0]),
        .cout(c_low)
    );

    add16 add16_high(
        .a(a[31:16]),
        .b(sub_xor_b[31:16]),
        .cin(c_low),
        .sum(result[31:16]),
        .cout()
    );

endmodule
