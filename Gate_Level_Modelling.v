module full_adder(
  output Sum, Carry,
  input A,B,Cin
);
  wire s1,c1,c2;
  
//instantiating the half_adder
  half_adder HA1(s1,c1,A,B);
  half_adder HA2(Sum,c2,s1,Cin);
  or g1(Carry,c1,c2);
  
endmodule

//Gate level modelling verilog code for half adder
module half_adder(
  output Sum,Carry,
  input A,B);

  xor g1(Sum,A,B);
  and g2(Carry,A,B);

endmodule
