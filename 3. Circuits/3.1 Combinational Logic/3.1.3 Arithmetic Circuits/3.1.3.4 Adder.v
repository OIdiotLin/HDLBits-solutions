module fadd_1( 
    input a, b, cin,
    output cout, sum );

    wire a_xor_b = a ^ b;
    assign cout = (a & b) | (a_xor_b & cin);
    assign sum = a_xor_b ^ cin;
endmodule


module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire [3:1] cout;
    fadd_1 adder1(x[0], y[0], 1'b0, cout[1], sum[0]);
    fadd_1 adder2(x[1], y[1], cout[1], cout[2], sum[1]);
    fadd_1 adder3(x[2], y[2], cout[2], cout[3], sum[2]);
    fadd_1 adder4(x[3], y[3], cout[3], sum[4], sum[3]);
    
endmodule
