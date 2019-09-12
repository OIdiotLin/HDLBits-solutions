module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum
);
    always @(*) begin
        for (integer i = 0; i < 100; i++) begin
            sum[i] = a[i] ^ b[i] ^ (i == 0 ? cin : cout[i - 1]);
            cout[i] = (a[i] & b[i]) | ((i == 0 ? cin : cout[i - 1]) & (a[i] | b[i]));
        end
    end
endmodule
