//Blake 11/29/12 Constant

//variable const
module vconst (out);
	parameter width=4;
	parameter value=4;
	output wire [width:0] out;

	assign out = value;
		
endmodule
