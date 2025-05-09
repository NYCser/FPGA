module mux8_1(in, sel, out);
input wire [7:0] in; 
input wire [2:0] sel; 
output reg out;

always @(in,sel)
case(sel)
0: out = in[0];
1: out = in[1];
2: out = in[2];
3: out = in[3];
4: out = in[4];
5: out = in[5];
6: out = in[6];
default: out = in[7];
endcase
endmodule
