module top_module( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [3:0] couts;
    assign cout = couts[3];

    bcd_fadd first_fadder(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(couts[0]),
        .sum(sum[3:0])
    );

    generate
        genvar i;
        for (i = 4; i < 16; i = i + 4) begin : adders
            bcd_fadd adder(
                .a(a[i+3:i]),
                .b(b[i+3:i]),
                .cin(couts[(i>>2)-1]),
                .cout(couts[i>>2]),
                .sum(sum[i+3:i])
            );
        end
    endgenerate
endmodule
