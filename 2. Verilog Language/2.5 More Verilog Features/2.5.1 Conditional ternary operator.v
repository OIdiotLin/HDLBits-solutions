module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min
);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] t1 = a < b ? a : b;
    wire [7:0] t2 = c < d ? c : d;
    assign min = t1 < t2 ? t1 : t2;

endmodule
