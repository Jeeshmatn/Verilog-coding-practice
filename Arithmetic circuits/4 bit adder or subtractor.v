// Design a 4-bit circuit that can perform either addition or subtraction based on a control signal.

// Inputs: A[3:0], B[3:0], ctrl

// Outputs: Result[3:0], CarryOrBorrow

// When ctrl = 0, perform A + B

// When ctrl = 1, perform A - B


module add_sub(
  input [3:0]A,
  input [3:0]B,
  input ctrl,
  output reg [3:0]Result,
  output reg cb
);


  reg [4:0]out;
  
  always @(*)begin
    
    if(ctrl==1)begin
      out={1'b0,A} -{1'b0,B};
      Result=out[3:0];
      cb=out[4]; 
    end
    else begin
      out={1'b0,A} +{1'b0,B};
      Result=out[3:0];
      cb=out[4]; 
    end
    
  end
endmodule
