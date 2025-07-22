module jk_ff(
  input j,k,clk,rst_n,
  output reg q
);
  
  always @ (posedge clk or negedge rst_n)begin
    
    if(!rst_n)
      q <= 0;
    
    else begin
   
      case({j,k})
        
        2'b00 : q <= q ;
        2'b01 : q <= 0 ;
        2'b10 : q <= 1 ;
        2'b11 : q <= ~q ;

      endcase  
    end  
  end 
endmodule



module maste_slave(
  input clk,rst_n,j,k,
  output q
);
  
  wire master_q;
  wire clk_n = ~ clk;
  
  jk_ff mas(  .clk(clk) , .rst_n(rst_n),  .j(j), .k(k), .q(master_q)  );
  
  jk_ff slv(  .clk(clk_n) , .rst_n(rst_n),  .j(master_q), .k(~master_q), .q(q)  );

endmodule

