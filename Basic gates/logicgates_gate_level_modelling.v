module logic_gates(
    input in1,in2,
    output o_and,
    output o_or,
    output o_nand,
    output o_nor,
    output o_xor,
    output o_xnor,
    output o_not
);

    
    and   a1(o_and,in1,in2);
    or    o1(o_or,in1,in2);
    
    nand  n1(o_nand,in1,in2);
    nor   n2(o_nor,in1,in2);

    xor   x1(o_xor,in1,in2);
    xnor  x2(o_xnor,in1,in2);

    not   n(o_not,in1);


endmodule
