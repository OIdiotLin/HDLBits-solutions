module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c_low;
    wire [15:0] sum_high_with_cin;
    wire [15:0] sum_high_without_cin;

    add16 add16_low(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(0),
        .sum(sum[15:0]),
        .cout(c_low),
    );

    add16 add16_high_with_cin(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1),
        .sum(sum_high_with_cin),
        .cout()
    );

    add16 add16_high_without_cin(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(0),
        .sum(sum_high_without_cin),
        .cout()
    );
    
    always @(*) begin
        case (c_low)
            0: sum[31:16] = sum_high_without_cin;
            1: sum[31:16] = sum_high_with_cin;
        endcase 
    end

endmodule
