// Implement a 1:8 demultiplexer using 2:4 decoder logic or case statement.
// Inputs: data_in, sel[2:0]
// Outputs: out[7:0]


module dmux_1_8(
  input data_in,
  input [2:0]sel,
  output reg [7:0]out
);
  
  always @ (*)begin
    
    out=8'b00000000;
    
    case(sel)
      
      3'b000 : out[0] = data_in  ;
      3'b001 : out[1] = data_in  ;
      3'b010 : out[2] = data_in  ;
      3'b011 : out[3] = data_in  ;
      3'b100 : out[4] = data_in  ;
      3'b101 : out[5] = data_in  ;
      3'b110 : out[6] = data_in  ;
      3'b111 : out[7] = data_in  ;
       
    endcase
    
  end

endmodule
    


