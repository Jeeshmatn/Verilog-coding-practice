
module xor_gate(
  input a,b,
  output y
);
  
  assign y = a ^ b;
  
endmodule


module buf_gate(
  input a,
  output y
);
  
  assign y=a ; 

endmodule


module g_b(
  input g3,g2,g1,g0,
  output b3,b2,b1,b0
);
   
  wire b2_w,b1_w; //wire for intermediate signal (optional)
  
  buf_gate buf1( .y(b3) , .a(g3)  );
 
  xor_gate xor2( .y(b2_w) , .a(g3), .b(g2)  ); 
  
  xor_gate xor1( .y(b1_w) , .a(b2), .b(g1)  ); 
  
  xor_gate xor0( .y(b0) , .a(b1), .b(g0)  ); 
  
endmodule 
  
  
 