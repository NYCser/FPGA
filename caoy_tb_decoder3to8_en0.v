`timescale 1ns/1ps
module caoy_tb_decoder3to8();
reg EN;
reg [2:0] in;
wire [7:0] out;

decoder3to8 de(
.in(in), 
.out(out), 
.EN(EN)
);

initial begin
EN = 0;
in = 3'b000;
end

always forever #10 in = in + 1;
always forever #80 EN = ~EN;

endmodule
