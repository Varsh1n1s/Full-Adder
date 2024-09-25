module full_adder(
  output Sum, Carry,
  input A,B,Cin
);

  assign Sum = A^B^Cin;
  assign Carry = (A&B)|(Cin&(A^B));

endmodule
