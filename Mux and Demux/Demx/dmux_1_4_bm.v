// 1:4 Demultiplexer
// Q: Write Verilog code for a 1:4 demultiplexer using behavioral modeling.
// Inputs: data_in, sel[1:0]
// Outputs: out[3:0]


module dmux(
  input data_in,
  input [1:0]sel,
  output reg [3:0]out
);
   
  always @ (*)begin
    
    out=4'b0000;
    
    case(sel)
      
      2'b00 : out[0] = data_in  ;
      2'b01 : out[1] = data_in  ;
      2'b10 : out[2] = data_in  ;
      2'b11 : out[3] = data_in  ;
          
    endcase
    
  end

endmodule
    