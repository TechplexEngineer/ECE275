//Blake 11/20/12 5bit to 4bit BCD
//pg354 //pg360


module seg7 (bcd, leds);
	input wire [3:0] bcd;
	output reg [0:6] leds;
	
	//   - a
	//f | |	b
	//   - g
	//e | |	c
	//   - d


	always @(bcd)
	begin
		case(bcd)      //abcdefg
			0: leds =~7'b1111110;
			1: leds =~7'b0110000;
			2: leds =~7'b1101101;
			3: leds =~7'b1111001;
			4: leds =~7'b0110011;
			5: leds =~7'b1011011;
			6: leds =~7'b1011111;
			7: leds =~7'b1110000;
			8: leds =~7'b1111111;
			9: leds =~7'b1111011;
			10: leds=~7'b0000000; //off
			11: leds=~7'b0110110; //11
			12: leds=~7'b0000001; //minus sign
			default: leds=7'b0;
		endcase
	end
endmodule