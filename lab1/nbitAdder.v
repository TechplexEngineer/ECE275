//Blake 11/20/12 4 Bit Adder
//pg290

module nbitAdder (X, Y, S);
	parameter n=4;
	input [n-1:0] X, Y;
	output reg [n:0] S;
	
	always @(X, Y)
		S = X + Y;

endmodule


/*

module my4bitAdder (carryin, X, Y, S);
	parameter n=4;
	input carryin;
	input [n-1:0] X, Y;
	output reg [n:0] S;
	
	always @(X, Y, carryin)
		S = X + Y + carryin;

endmodule

*/