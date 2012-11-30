//Blake 11/28/12 Add, Subtract, Multiply, Devide (ALU)

module ALU (ctrl, Y, X, out);
	parameter n=4;
	input wire [n-1:0] X, Y;
	input wire [1:0] ctrl;
	output reg [n:0] out;
	
	always @*//(X, Y, ctrl)
	begin
		if(ctrl == 2'b00)		 //Add
			out <= X + Y;
		else if(ctrl == 2'b01)//Subtract
			out <= X - Y;
		else if(ctrl == 2'b10)//Multiply
			out <= X * Y;
		else if(ctrl == 2'b11)//Divide
			out <= X / Y;
	end

endmodule
