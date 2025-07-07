// Write a Verilog module for a 4:2 priority encoder where the highest-priority input has the highest index (i.e., in[3] has the highest priority). Also include a valid output that is high when any input is high.
//  Inputs: in[3:0] → 4-bit input vector
// Outputs:out[1:0] → 2-bit binary output representing the highest-priority active input
// valid → 1-bit output, high (1) if any input is high, otherwise low (0)

// Priority Order:
// Input Bit	Priority	Output (out)
// in[3]		Highest		2'b11
// in[2]					2'b10
// in[1]					2'b01
// in[0]		Lowest		2'b00
// No input high	—		2'b00, valid = 0




module pe_4_2(
  input [3:0]in,
  output reg [1:0]out,
  output reg valid

);
  
  always @(*)begin
    
    if(in[3])begin
      out=2'b11;
      valid=1;
    end
    
    else if(in[2])begin
      out=2'b10;
      valid=1; 
    end
    
    else if(in[1])begin
      out=2'b01;
      valid=1; 
    end
      
      
     else begin
      out=2'b00;
      valid=0; 
    end
           
      
       
      
  end
  
endmodule

