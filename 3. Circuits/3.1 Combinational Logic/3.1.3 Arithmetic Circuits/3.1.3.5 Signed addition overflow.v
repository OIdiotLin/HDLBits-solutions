// module fadd_1( 
//     input a, b, cin,
//     output cout, sum );

//     wire a_xor_b = a ^ b;
//     assign cout = (a & b) | (a_xor_b & cin);
//     assign sum = a_xor_b ^ cin;
// endmodule


module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);
    // wire [7:1] cout;
    // fadd_1 adder1(a[0], b[0], 1'b0, cout[1], s[0]);
    // fadd_1 adder2(a[1], b[1], cout[1], cout[2], s[1]);
    // fadd_1 adder3(a[2], b[2], cout[2], cout[3], s[2]);
    // fadd_1 adder4(a[3], b[3], cout[3], cout[4], s[3]);
    // fadd_1 adder5(a[4], b[4], cout[4], cout[5], s[4]);
    // fadd_1 adder6(a[5], b[5], cout[5], cout[6], s[5]);
    // fadd_1 adder7(a[6], b[6], cout[6], cout[7], s[6]);
    // fadd_1 adder8(a[7], b[7], cout[7], overflow, s[7]);
    assign s = a + b;
    assign overflow = ~((a[7] ^ b[7]) | ~(a[7] ^ s[7]));
endmodule
