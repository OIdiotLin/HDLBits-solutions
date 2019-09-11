module top_module ( 
    input clk, 
    input [7:0] d,
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] t[3:1];
    my_dff8 dff1(.clk(clk), .d(d), .q(t[1]));
    my_dff8 dff2(.clk(clk), .d(t[1]), .q(t[2]));
    my_dff8 dff3(.clk(clk), .d(t[2]), .q(t[3]));
    
    always @(*) begin
        case (sel)
            0: q = d;
            1: q = t[1];
            2: q = t[2];
            3: q = t[3];
        endcase
    end

endmodule
