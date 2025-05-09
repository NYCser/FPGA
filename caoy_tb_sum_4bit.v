`timescale 1ns/1ns
module caoy_tb_sum4bit();

reg [3:0] A;
reg [3:0] B;
wire [4:0] S;

initial begin
	A = 4'b0101; 
	B = 4'b0011;
end

always forever #10 A = ~A;
always forever #10 B = ~B;
always forever #20 A = ~A;

sum_4bit sm (A,B,S);
endmodule
