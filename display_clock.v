

module display_clock(counter, counter_HEX6, counter_HEX7);
	input [3:0] counter;
	output [6:0] counter_HEX6;
	output [6:0] counter_HEX7;
	
	
	reg [6:0] TC4Mag [0:10];
	
	initial
	begin
	 TC4Mag[0] = 7'b1000000;
	 TC4Mag[1] = 7'b1111001;
	 TC4Mag[2] = 7'b0100100;
	 TC4Mag[3] = 7'b0110000;
	 TC4Mag[4] = 7'b0011001;
	 TC4Mag[5] = 7'b0010010;
	 TC4Mag[6] = 7'b0000010;
	 TC4Mag[7] = 7'b1111000;
	 TC4Mag[8] = 7'b0000000;
	 TC4Mag[9] = 7'b0010000;
	 TC4Mag[10] = 7'b1111111; // whole HEX is off
	end
	
	wire counter_equal_ten = counter == 4'b1010;
	
	assign counter_HEX6 = (counter_equal_ten) ? TC4Mag[0] : TC4Mag[counter];
	assign counter_HEX7 = TC4Mag[10];


endmodule
