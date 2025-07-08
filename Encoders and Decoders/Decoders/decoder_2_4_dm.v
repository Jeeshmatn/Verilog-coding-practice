// Question:
// Write a Verilog module for a 2:4 decoder using both behavioral and dataflow modeling styles. Inputs: in[1:0], Output: out[3:0].


// dataflow modeling #1

// module decoder_2_4(
//   input [1:0]in,
//   output[3:0]out
// );
  
//   assign out[0]= ~in[0] & ~in[1] ;
//   assign out[1]= ~in[0] &  in[1] ;
//   assign out[2]=  in[0] & ~in[1] ;
//   assign out[3]=  in[0] &  in[1] ;


// endmodule


// dataflow modeling #2

// in	   Decimal	   1 << in		  out
// 00	     0		   0001			4'b0001
// 01        1		   0010			4'b0010
// 10	     2		   0100			4'b0100
// 11	     3		   1000			4'b1000


module decoder_2_4(
  input [1:0]in,
  output[3:0]out
);
 
  assign out=  1<<in;   //shifting 1 position left from 0001 based on input ;if input is 1 , shifing 1 postion from 0001;if input is 2,shifting 2 postion from 								0001;like that;


endmodule



