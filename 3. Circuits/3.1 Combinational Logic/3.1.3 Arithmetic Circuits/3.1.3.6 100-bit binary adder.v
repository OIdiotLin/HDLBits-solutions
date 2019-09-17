module adder_1bit( 
    input a, b, cin,
    output cout, sum );

    wire a_xor_b = a ^ b;
    assign cout = (a & b) | (a_xor_b & cin);
    assign sum = a_xor_b ^ cin;
endmodule
 

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );

    wire [99:0] couts;

    assign cout = couts[99];

    adder_1bit first_fadder(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .cout(couts[0]),
        .sum(sum[0])
    );

    generate
        genvar i;
        for (i = 1; i < 100; i = i + 1) begin : adders
            adder_1bit adder(
                .a(a[i]),
                .b(b[i]),
                .cin(couts[i-1]),
                .cout(couts[i]),
                .sum(sum[i])
            );
        end
    endgenerate

endmodule
