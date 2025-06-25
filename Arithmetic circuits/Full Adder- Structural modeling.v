
// // (b) Full Adder- Structural modeling (by instantiating two half adders and one OR gate)
// // Inputs: a, b, cin

// // Outputs: sum, cout




module ha_1(input a,b,output s1,c1);
  assign s1=a^b;
  assign c1=a&b;
endmodule


module ha_2(input s1,cin,output sum,c2);
  assign sum=s1^cin;
  assign c2=s1&cin;
endmodule


module or_gate(input c1,c2,output cout);
  assign cout=c1 | c2 ; 
endmodule


module fa(input a,b,cin,output sum, cout);
  
  wire s1,c1,c2;

  ha_1 ha1( a,b,s1,c1 );
  ha_2 ha2( s1,cin,sum,c2 );
  or_gate orgate( c1,c2,cout);
  
endmodule


