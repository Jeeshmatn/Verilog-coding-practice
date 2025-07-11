// (a)  Full Adder-Dataflow modeling
// // Inputs: a, b, cin

// // Outputs: sum, cout

module full_adder(input a,b,cin,output sum,cout);
  
  assign sum=a^b^cin;
  assign cout=a&b | b&cin | cin&a ;
  
endmodule