// (b) Behavioral modeling


module g_b(
  input [3:0]g,
  output reg [3:0]bin

);
  
  
  always @(*) begin
    
    
  bin[3] = g[3];
  bin[2] = bin[3] ^ g[2];
  bin[1] = bin[2] ^ g[1];
  bin[0] = bin[1] ^ g[0];
    
    
end
  
endmodule


// (b) Behavioral modeling using temporary variable

module g_b(
  input [3:0]g,
  output reg [3:0]bin
);
  reg [3:0]temp;

  always @(*) begin
    temp[3] = g[3];
    temp[2] = temp[3] ^ g[2];
    temp[1] = temp[2] ^ g[1];
    temp[0] = temp[1] ^ g[0];
    bin = temp;
  end
endmodule
