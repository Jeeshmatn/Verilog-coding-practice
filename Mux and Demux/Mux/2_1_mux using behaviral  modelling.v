// 2:1 Multiplexer
// Q: Write Verilog code for a 2:1 multiplexer using:

// (a) Behavioral modeling

// (b) Dataflow modeling

// (c) Structural modeling (using basic gates)

// Inputs: in0, in1, sel
// Output: out


module mux2_1(
  input in0,
  input in1,
  input sel,
  output reg out
);
  
  always @(*)begin
    
    if(sel)
      out=in1;
    else
      out=in0;
  end
endmodule
    