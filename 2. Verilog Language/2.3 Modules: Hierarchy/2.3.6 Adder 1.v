module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_high;
    wire [15:0] sum_low;
    wire c_low;
    
    add16 add16_low(
        .a(a[15:0]), 
        .b(b[15:0]),
        .cin(0),
        .sum(sum_low),
        .cout(c_low)
    );
    add16 add16_high(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(c_low),
        .sum(sum_high),
        .cout()
    );

    assign sum = {sum_high, sum_low};

endmodule
