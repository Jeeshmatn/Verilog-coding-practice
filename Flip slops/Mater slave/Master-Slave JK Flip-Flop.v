// Master-Slave JK Flip-Flop
// Write a Verilog code for a Master-Slave JK Flip-Flop using two clocked stages.
// Inputs: clk, J, K    Output: Q
// Use master triggered on clk, slave on ~clk
// Follows standard JK behavior using two sequential flip-flops



module  MS_JK_ff(
  input j,k,clk,
  output reg q
);
  
  reg master;
  
  always @ (posedge clk)begin

    case ({j,k})   
    
    2'b00 : master <=q;
    2'b01 : master <=0;
    2'b10 : master <=1;
    2'b11 : master <= ~q;
     
    endcase
    
  end   
  
  
  always @ (negedge clk)begin
    
    q <=master;
    
  end
    
endmodule




































