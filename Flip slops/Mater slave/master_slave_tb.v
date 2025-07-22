//testbench


module tb;
  
  reg j,k,clk;
  wire q;
  
  master_ff dut( .j(j), .k(k) ,.clk(clk) , .q(q)   );
  
  initial clk = 0;

  always #5 clk = ~ clk ;
  
  initial begin
  
    $display(" Time\tjk\tq ");
    $monitor("  %0t\t%0d%0d\t%0d " , $time,j,k,q );

    
    j = 0; k = 0;
    
    #5;
     
    j=0; k=1;
    
    #10;
    
    j=1; k=0;
    
    #10;
    
    j=1; k=1;

    
    #35;
    
    $finish;
      
  end
  
  
endmodule
