
module four_BIT_Ripple_carry_Counter_tb();
reg clk,rst;
wire Q0,Q1,Q2,Q3;
wire [3:0]Y;
four_BIT_Ripple_carry_Counter dut(.clk(clk), .rst(rst), .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3), .Y(Y));
initial 
begin 
clk = 1'b0;
forever #5 clk = ~clk;
end 

initial 
begin 
rst = 1'b1;
#5 rst = 1'b0;
#100 $finish;
end
endmodule
