module circuit( input logic a, b, c,
    output logic x, y);
   logic not_c, nand_ab, or_ab, xor_ab;
   assign not_c = ~c;
   assign nand_ab = ~(a & b);
   assign or_ab = a | b;
   assign xor_ab = (nand_ab ^ or_ab);
   assign x = (not_c ^ or_ab);
   assign y = (or_ab & xor_ab);
endmodule