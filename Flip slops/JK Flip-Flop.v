// JK Flip-Flop
// Implement a JK Flip-Flop in Verilog with positive edge triggering.

// Inputs: clk, J, K      Output: Q

// Truth Table:
// J=0, K=0: No change
// J=0, K=1: Reset (Q=0)
// J=1, K=0: Set (Q=1)
// J=1, K=1: Toggle


module JK_ff(
  input j,k,clk,
  output reg q
);
  
  always @ (posedge clk)begin
    
    case({j,k})
      
      2'b00: q <=q;
      2'b01: q <=0;
      2'b10: q <=1;
      2'b11: q<=~q;
      
    endcase
    
  end
  
endmodule