// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos
);
    always @(*) begin
        case (in)
            2: pos = 1;
            4: pos = 2;
            6: pos = 1;
            8: pos = 3;
            10: pos = 1;
            12: pos = 2;
            14: pos = 1;
            default: pos = 0;
        endcase
    end

endmodule
