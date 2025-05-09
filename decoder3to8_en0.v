module decoder3to8_en0(
input wire [2:0] in, 
input wire en, 
output reg [7:0] out);
always @(*)
if (en == 0) 
out = (8'b11111110 << in); // d?ch bit trái
else
out = 8'b11111111;
endmodule
