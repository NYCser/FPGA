`timescale 1ns/1ns 
module caoy_tb_demux1_8();
reg in;
reg [2:0] sel;
wire [7:0] out;
initial begin
in = 1; 
sel = 0;
end

always forever #10 sel[0] = ~sel[0];
always forever #20 sel[1] = ~sel[1];
always forever #30 sel[2] = ~sel[2];
always forever #40 in = in + 1;
demux1_8 dmx(in,sel,out);
endmodule 