module full_adder(a,b,c,cin,sum,carry);
input wire a; 
input wire b;
input wire cin;        
output wire sum; 
output wire carry;      


assign sum = a^b^cin;        
assign carry = (a&b)|(cin&(a^b));
endmodule
module sum_4bit(
    input wire [3:0] A,    
    input wire [3:0] B,    
    output wire [4:0] S    
);

// carry signals
wire c1, c2, c3;  

full_adder add0 (A[0], B[0], 0 , S[0], c1);
full_adder add1 (A[1], B[1], c1, S[1], c2);
full_adder add2 (A[2], B[2], c2, S[2], c3); 
full_adder add3 (A[3], B[3], c3, S[3], S[4]);

endmodule
