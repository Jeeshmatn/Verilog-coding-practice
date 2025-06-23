
// // Write a Verilog module for a Half Adder using dataflow modeling.

// // Inputs: a, b

// // Outputs: sum, carry

// // Use assign statements only.


module halfadder(input a,b,output sum,carry);

   assign sum=a^b;
  assign carry=a&b;
  
endmodule