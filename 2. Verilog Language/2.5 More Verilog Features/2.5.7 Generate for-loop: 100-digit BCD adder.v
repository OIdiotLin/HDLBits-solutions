module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);
    wire [100:1] couts;
    assign cout = couts[100];

    bcd_fadd first_fadder(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(couts[1]),
        .sum(sum[3:0])
    );

    generate
        genvar i;
        for (i = 4; i < 400; i += 4) begin : adder
            
            bcd_fadd bcd_fadder(
                .a(a[i+3:i]),
                .b(b[i+3:i]),
                .cin(couts[i>>2]),
                .cout(couts[(i>>2)+1]),
                .sum(sum[i+3:i])
            );
        end
    endgenerate
endmodule
