//Blake 12/4/12 Constant


module neg2seg7 (neg, out);
	input wire [0:0] neg; 
	output reg [3:0] out;

	always @(neg)
	if(neg)
		out = 12; //Case 12 is minus signe
	else	
		out = 10; //Case 10 is off
		
endmodule