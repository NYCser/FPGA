`timescale 1ns/1ns // define timescale
module caoy_tb_mux8_1();
reg [7:0] in;
reg [2:0] sel;
wire out;
// initialize w and s to 000 and 00, respectively
initial begin
in = 0 ; 
sel = 0;
end
// generate w0- w3
always forever #10 in[0] = ~in[0];
always forever #20 in[1] = ~in[1];
always forever #40 in[2] = ~in[2];
always forever #80 in[3] = ~in[3];
always forever #100 in[4] = ~in[4];
always forever #200 in[5] = ~in[5];
always forever #400 in[6] = ~in[6];
always forever #800 in[7] = ~in[7];
//generate 4 state of s by increasing s by 1
always forever #500 sel = sel + 1;
// conect w,s,y to moduke mux41
mux8_1 mx(in,sel,out);
endmodule

