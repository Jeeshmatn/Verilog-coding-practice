// To design and implement a 4-bit combinational ALU capable of performing eight basic arithmetic and logic operations 
// (ADD, SUB, AND, OR, XOR, NOT, Increment, and Decrement) based on a 3-bit selection input. 
// The ALU should be purely combinational, i.e., without any clock or memory elements.



// Sel (3-bit)	Operation	Description									Notes
// 000				ADD			Adds A and B						Outputs carry
// 001				SUB			Subtracts B from A (A - B)			Outputs borrow if needed
// 010				AND			Bitwise AND of A and B	
// 011				OR			Bitwise OR of A and B	
// 100				XOR			Bitwise XOR of A and B	
// 101				NOT			Bitwise NOT of A	B is ignored
// 110			INCREMENT		A + 1	
// 111			DECREMENT		A - 1	


//  Inputs:
// A[3:0] : 4-bit input operand A       B[3:0] : 4-bit input operand B      Sel[2:0] : 3-bit selection input to choose the ALU operation

//  Outputs:
// Result[3:0] : 4-bit result of the selected operation    CarryOut : 1-bit output indicating carry (for ADD) or borrow (for SUB)
// Zero : 1-bit flag set to 1 if Result == 0000            Overflow (optional) : 1-bit flag indicating overflow (for signed arithmetic)


//verilog code

module ALU(input [3:0]A,
           input [3:0]B,
           input [2:0]sel,
           output reg [3:0]result,
           output reg carryout,
           output reg zero
          );
  
  
  reg [4:0] temp;

  always @ (*)begin
    
    result=0;
    carryout=0;
    temp=0;
    
    case(sel)
      
      3'b000	:  begin
        
      temp  =  A + B ;
      result =temp[3:0];
      carryout=temp[4];
      
      end
      
      
      3'b001	:   begin
        
      temp  = {1'b0,A}-{1'b0,B};
      result =temp[3:0];
      carryout=temp[4];
       
      end
      
      
      3'b010	:  result  =  A & B ;
      3'b011	:  result  =  A | B ;
      3'b100	:  result  =  A ^ B ;
      3'b101	:  result  =  ~A	;
      
      
      3'b110	:  begin
        
      temp  =   A + 1  ;
      result =temp[3:0];
      carryout=temp[4];
      
      end
      
      
      
      3'b111	:  begin
        
      temp  =  A - 1	  ;
      result =temp[3:0];
      carryout=temp[4];
      
      end
      
    
    endcase
    
    if(result==4'b0000)
      zero=1;
    else 
    zero=0;
    
    
  end
 
endmodule
           

