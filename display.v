

module display(code, HEX0);
	input [1:0] code;
	output [6:0] HEX0;
	
	reg [1:0] TC4Mag [0:2];
	initial
	begin
	TC4Mag[0] = 7'b0010000; // green
	TC4Mag[1] = 7'b0010001; // yellow
	TC4Mag[2] = 7'b0101111; // red
	
	end
	
	assign HEX0 = TC4Mag[code];

endmodule
