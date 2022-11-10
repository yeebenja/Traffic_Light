

module lab6(SW, HEX0,HEX1,HEX2, HEX3, HEX6, HEX7, KEY);

input [17:0] SW;
input [3:0] KEY;
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;
output [6:0] HEX6;
output [6:0] HEX7;


traffic_light_controller inst1(.W(SW[0]), .EL(SW[1]), .NL(SW[2]), .E(SW[3]), .clk(KEY[0]), .WTL(HEX0[6:0]), .ELTL(HEX1[6:0]), .NLTL(HEX2[6:0]), .ETL(HEX3[6:0]), .counter_HEX6(HEX6[6:0]), .counter_HEX7(HEX7[6:0]), .sys_reset(SW[17]));


endmodule
