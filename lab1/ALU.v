//Blake 11/28/12 Add, Subtract, Multiply, Devide (ALU)

module ALU (ctrl, Y, X, out, isNeg);
	parameter Xn=4;
	parameter Yn=4;
	parameter On=4;
	input wire [Xn-1:0] X;
	input wire [Yn-1:0] Y;
	input wire [1:0] ctrl;
	output reg [On:0] out;
	output reg [0:0] isNeg;
	
	always @*//(X, Y, ctrl)
	begin
		if(ctrl == 2'b00)		 //Add
			out <= X + Y;
		else if(ctrl == 2'b01)//Subtract
		begin
			out <= X - Y;
			if(X>Y)
				isNeg = 1;
			else
				isNeg = 0;
		end
		else if(ctrl == 2'b10)//Multiply
			out <= X * Y;
		else if(ctrl == 2'b11)//Divide
			out <= X / Y;
	end

endmodule
