// Design a 4-bit Subtractor using behavioral modeling.

// Inputs: A[3:0], B[3:0]

// Outputs: Diff[3:0], Borrow

// Hint: Diff = A - B;

// Optional: Use always block with - operator.


module subtractor(
  input [3:0]A ,
  input [3:0]B , 
  output reg [3:0]Diff,
  output reg Borrow
);
  
  reg  [4:0]result;
  
  always @(*)begin
    
    result= {1'b0,A}-{1'b0,B};
    Diff=result[3:0];
    Borrow=result[4];
    
  end
  
endmodule
