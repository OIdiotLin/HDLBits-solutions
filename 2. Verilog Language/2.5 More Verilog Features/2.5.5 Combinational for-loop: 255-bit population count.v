module top_module( 
    input [254:0] in,
    output [7:0] out
);
    always @(*) begin
        out = 0;
        for (integer i = 0; i < 255; i++) begin
            out = out + (in[i] == 1 ? 1 : 0);
        end
    end
endmodule
