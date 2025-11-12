"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> index, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_check}> : (index, index) -> index
    %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith_overflow_mode_check}> : (index, index) -> index
    %2 = "arith.subi"(%1, %arg1) <{overflowFlags = #arith_overflow_mode_check}> : (index, index) -> index
    %3 = "arith.addi"(%2, %arg0) <{overflowFlags = #arith_overflow_mode_check}> : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()