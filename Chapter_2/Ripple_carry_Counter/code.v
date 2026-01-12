
module T_ff(
input clk,rst,
output reg  Q);

always@(negedge clk)
begin 
if(rst == 1'b1)
    Q<= 1'b0;
    else 
    Q<= ~Q;
    end 
    endmodule


module four_BIT_Ripple_carry_Counter(
  input clk,rst,
  output Q0,Q1,Q2,Q3,
  output [3:0]Y);
  
 T_ff a1(.clk(clk), .rst(rst), .Q(Q0));
 T_ff a2(.clk(Q0), .rst(rst), .Q(Q1));
 T_ff a3(.clk(Q1), .rst(rst), .Q(Q2));
 T_ff a4(.clk(Q2), .rst(rst), .Q(Q3));
  assign Y = {Q3,Q2,Q1,Q0};
   
endmodule
