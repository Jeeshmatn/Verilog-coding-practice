// Write a Verilog module to convert a 4-bit BCD number (bcd[3:0]) into 7-segment display output (seg[6:0]), 
//assuming common cathode display. Use behavioral modeling with a case block.
// Segment order (commonly used): seg[6:0] = {a, b, c, d, e, f, g}
// Anode (+)
// Cathode (−)

// | Segment Type   | ON logic | OFF logic | Code                      |
// | -------------- | -------- | --------- | ------------------------- |
// | Common Cathode | `1`      | `0`       | Normal (`seg = pattern`)  |
// | Common Anode   | `0`      | `1`       | Invert (`seg = ~pattern`) |



module bcd_7segment(
  input [3:0]bcd,
  output reg [6:0]seg
);
  
  always @(*)begin
    
    case(bcd)
      
    4'b0000: seg = 7'b1111110; // 0
    4'b0001: seg = 7'b0110000; // 1
    4'b0010: seg = 7'b1101101; // 2
    4'b0011: seg = 7'b1111001; // 3
    4'b0100: seg = 7'b0110011; // 4
    4'b0101: seg = 7'b1011011; // 5
    4'b0110: seg = 7'b1011111; // 6
    4'b0111: seg = 7'b1110000; // 7
    4'b1000: seg = 7'b1111111; // 8
    4'b1001: seg = 7'b1111011; // 9
      
    default: seg = 7'b0000000; // Blank or error
      
      
    endcase
    
  end
  
endmodule
