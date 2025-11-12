"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (index), sym_name = "complex_index_maths"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %4 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags} > : (index, index) -> index
    %5 = "arith.addi"(%arg2, %4) <{overflowFlags = #arith_overflow_flags} > : (index, index) -> index
    %6 = "arith.subi"(%5, %arg1) <{overflowFlags = #arith_overflow_flags} > : (index, index) -> index
    %7 = "arith.andi"(%6, %arg0) <{overflowFlags = #arith_overflow_flags} > : (index, index) -> index
    "func.return"(%7) : (index) -> ()
  }) : () -> ()
  "scf.for"(%arg0, %arg1, %arg2) <{step = 1 : index, kind = #scfKind} > ({
  ^bb0(%iv: index):
    %8 = "arith.addi"(%iv, %arg0) <{overflowFlags = #arith_overflow_flags} > : (index, index) -> index
    "scf.yield"() : () -> ()
  }) : (index, index, index) -> ()
}) : () -> ()