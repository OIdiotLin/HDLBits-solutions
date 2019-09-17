module top_module( 
    input a, b, cin,
    output cout, sum );

    wire a_xor_b = a ^ b;
    assign cout = (a & b) | (a_xor_b & cin);
    assign sum = a_xor_b ^ cin;
endmodule
