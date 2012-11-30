//Blake 11/28/12 Binary to BCD
//pg354



//module name has to be the same as the file name
module binary2BCD (value, overflow, MSO, LSO);
	parameter n=4;
	input wire [n:0]value;
	output reg [3:0] MSO; //Most significant Output
	output reg [3:0] LSO; //Least significant Output
	output reg [3:0] overflow; //
	
	integer x;
	always @(value)
	begin
		if(value/10 >= 10) begin
			overflow <= (value/100);
			x <= value%100;
		end
		else begin
			overflow <= 0;
			x <= value;
		end
			
		MSO <= x/10;
		LSO <= x%10;
		
	end		
		
endmodule
