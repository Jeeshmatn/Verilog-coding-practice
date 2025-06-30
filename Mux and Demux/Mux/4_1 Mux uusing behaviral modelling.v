// Q: Implement a 4:1 MUX in Verilog using behavioral modeling.
// Inputs: in[3:0], sel[1:0]
// Output: out 
  
 
module mux_4_1(
  input [3:0]in,
  input [1:0]sel,
  output reg out
);
  
  always @(*)begin
    
    case(sel)
      
      2'b00:out=in[0];
      2'b01:out=in[1];
      2'b10:out=in[2];
      2'b11:out=in[3];
      default:$display("invalid output");
      
    endcase
    
  end
  
endmodule
