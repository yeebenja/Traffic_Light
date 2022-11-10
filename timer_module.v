

module timer_module(sys_reset, clock, count);

input sys_reset;
input clock;
output [1:0] count;

reg [1:0] count;
reg [1:0] current_state;
reg [1:0] next_state;
wire timer_reset = sys_reset;

// First, figure out next state

parameter state_0 = 2'b00;
parameter state_1 = 2'b01;
parameter state_2 = 2'b10;
parameter state_3 = 2'b11;



always@*

begin 
	if (~timer_reset)
		if(current_state == 2'b00)
			next_state = 2'b01;
		else if(current_state == 2'b01)
			next_state = 2'b10;
		else if(current_state == 2'b10)
			next_state = 2'b11;
		else if(current_state == 2'b11)
			next_state = 2'b11;
	else
		next_state = 2'b00;
end

always@(posedge clock)

begin 
	if(sys_reset)
		 current_state <= state_0;
	else
		current_state <= next_state;
end

always@*

begin
	case(current_state)
	state_0:	begin
				count = 2'b00;
				end
	state_1:	begin
				count = 2'b01;
				end
	state_2:	begin
				count = 2'b10;
				end
	state_3:	begin
				count = 2'b11;
				end
	default: begin
				count = 2'b00;
				end	
	endcase
end


endmodule
