// Question:Binary to Gray Code Converter
// Write a Verilog module to convert a 4-bit binary number (bin[3:0]) to its equivalent Gray code (gray[3:0]) using:



//  Behavioral modeling


module b_g(
  input [3:0]bin,
  output reg [3:0]gray

);
  
  always @(*) begin
    
 	gray[3] = bin[3];
  	gray[2] = bin[3] ^ bin[2];
  	gray[1] = bin[2] ^ bin[1];
  	gray[0] = bin[1] ^ bin[0];
      
   end

endmodule

