module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    // out = in[0] + in[1] + in[2];

    always @(*) begin
        out = 0;
        for (integer i = 0; i < 3; i++) begin
            out = out + in[i];
        end
    end
endmodule
