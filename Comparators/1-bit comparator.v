// Design a 1-bit comparator in Verilog that takes two inputs and produces outputs to indicate: A > B, A < B, A == B
//  Inputs: A : 1-bit input         B : 1-bit input
//  Outputs: A_greater : 1 if A > B, else 0           A_less : 1 if A < B, else 0               A_equal : 1 if A == B, else 0


module comp_1(
  input a,
  input b,
  output reg a_g,
  output reg a_l,
  output reg a_e
);
  
  always @(*)begin
    
    // Reset all outputs
    
    a_g=0;
    a_l=0;
    a_e=0;
    
    
    
    if(a==b)
      a_e=1;
    else begin
      if(a>b)
        a_g=1;
      else 
        if(a<b)
          a_l=1;
    end
  end
endmodule
  
  
  
  