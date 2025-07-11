
// Design a 4-bit Ripple Carry Adder by: Creating a Full Adder module Using 4 instances of Full Adders connected in ripple fashion

// Inputs: A[3:0], B[3:0], Cin    ;   Outputs: Sum[3:0], Cout


module full_adder (input a,b,cin,output sum,cout);

  assign sum=a ^b^cin;
  assign cout=a&b | b&cin | cin&a ;
  
endmodule


module ripple_adder(input a[3:0] ,b[3:0] ,cin ,output sum[3:0] ,cout );
	
  wire c0,c1,c2;
 


full_adder fa0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c0));
full_adder fa1(.a(a[1]), .b(b[1]), .cin(c0),  .sum(sum[1]), .cout(c1));
full_adder fa2(.a(a[2]), .b(b[2]), .cin(c1),  .sum(sum[2]), .cout(c2));
full_adder fa3(.a(a[3]), .b(b[3]), .cin(c2),  .sum(sum[3]), .cout(cout));

  
endmodule





