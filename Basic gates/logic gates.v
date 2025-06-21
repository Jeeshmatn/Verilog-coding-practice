// Write a Verilog module for a 2-input AND gate. Inputs: a, b ; Output: y = a & b


module and_gate(
  input a,b,
  output y
  
);
  
  assign y=a&b;
  
endmodule

//Write a Verilog module for a 2-input OR gate.


module or_gate(
  input a,b,
  output y
);
  
  assign y=a|b;
  
endmodule

//Write a Verilog module for a 1 input NOT gate.  Input: a   ,  Output: y = ~a

module not_gate(
  input a,
  output y
);
  assign y = ~a;
  
endmodule



// Write a Verilog module for a 2-input NAND gate.

module nand_gate(input a,b,output y);
  
  assign y= ~(a&b);
  
endmodule


// Write a Verilog module for a 2-input NOR gate.

module nor_gate(input a,b,output y);
  
  assign y= ~(a|b);
  
endmodule

// Write a Verilog module for a 2-input XOR gate.

module xor_gate (input a,b,output y);
  
 assign y=a^b;
  
endmodule
  

// Write a Verilog module for a 2-input XNOR gate.


module xnor_gate(input a,b,output y);
  
  assign y= ~(a^b);
  
endmodule
