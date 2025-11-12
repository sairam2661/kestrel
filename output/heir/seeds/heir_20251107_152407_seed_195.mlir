"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i8, sym_name = "bitwise_xor_trick"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %1 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %2 = "arith.andi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "arith.andi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %4 = "arith.xori"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    "func.return"(%5) : (i8) -> ()
  }) : () -> ()
}) : () -> ()