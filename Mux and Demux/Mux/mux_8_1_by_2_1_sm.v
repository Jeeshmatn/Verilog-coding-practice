// Design an 8:1 multiplexer using only 2:1 multiplexers.
// Use structural modeling.
// Define a 2:1 MUX module and instantiate it multiple times to build 8:1 MUX.
// Inputs: in[7:0], sel[2:0]
// Output: out



module mux2_1(
  input in0,
  input in1,
  input sel,
  output  out
);
  
  assign out = sel ? in1 :in0 ;
  
endmodule


module mux_8_1(
  input [7:0]in,
  input [2:0]sel,
  output out
);

  wire w1,w2,w3,w4,w5,w6;

  mux2_1 m0(  .in0(in[0]) , .in1(in[1]) , .out(w1)  ,  .sel(sel[0])     );
  mux2_1 m1(  .in0(in[2]) , .in1(in[3]) , .out(w2)  ,  .sel(sel[0])     );
  mux2_1 m2(  .in0(in[4]) , .in1(in[5]) , .out(w3)  ,  .sel(sel[0])     );
  mux2_1 m3(  .in0(in[6]) , .in1(in[7]) , .out(w4)  ,  .sel(sel[0])     );
  
  
  mux2_1 m5(  .in0(w1) , .in1(w2) , .out(w5)  ,   .sel(sel[1])  );
  mux2_1 m6(  .in0(w3) , .in1(w4) , .out(w6)  ,   .sel(sel[1])  );
  
  
  mux2_1 m7(  .in0(w5) , .in1(w6) , .out(out) ,   .sel(sel[2])  );
  
  
  
endmodule
  