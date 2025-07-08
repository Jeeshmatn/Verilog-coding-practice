//Question:
//Write a Verilog module for a 2:4 decoder using both behavioral and dataflow modeling styles. Inputs: in[1:0], Output: out[3:0].

//behavioral modeling #1

module decoder_2_4(
  input [1:0]in,
  output reg [3:0]out
);
  
  always @(*)begin
    
    if(in==2'b11)begin
      out=4'b1000;
    end
    
    else  if(in==2'b10)begin
      out=4'b0100;
    end
     
    else  if(in==2'b01)begin
      out=4'b0010;
    end       
                
    else begin
      out=4'b0001;
    end       
                
                
                      
  end
  
endmodule






//behavioral modeling #2



module decoder_2_4(
  input [1:0]in,
  output reg [3:0]out
);
  
  always @(*)begin
  
    case(in)
      
      2'b00:out=4'b0001;
      2'b01:out=4'b0010;
      2'b10:out=4'b0100;
      2'b11:out=4'b1000;
      
      
      
      endcase
      
    end
                
                                  
  
endmodule













