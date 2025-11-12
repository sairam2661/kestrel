"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_signed}> : (index, index) -> index
    %1 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith_overflow_mode_unsigned}> : (index, index) -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.divu"(%1, %2) <{overflowFlags = #arith_overflow_mode_unsigned}> : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()