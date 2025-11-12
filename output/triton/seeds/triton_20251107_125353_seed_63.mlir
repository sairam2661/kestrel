"builtin.module"() ({
  "tt.func"() <{function_type = (i8, i8) -> (i8, i8, i8), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i8, %arg1: i8):
      %0 = "arith.constant"() <{value = 2 : i8}> : () -> i8
      %1 = "arith.addi"(%arg0, %0) : (i8, i8) -> i8
      %2 = "arith.subi"(%arg1, %1) : (i8, i8) -> i8
      %3 = "arith.muli"(%2, %arg0) : (i8, i8) -> i8
      %4 = "arith.remsi"(%arg0, %3) : (i8, i8) -> i8
      %5 = "arith.select"(%4, %arg1, %arg0) : (i8, i8, i8) -> i8
      %6 = "arith.xori"(%5, %1) : (i8, i8) -> i8
      "tt.return"(%1, %6, %5) : (i8, i8, i8) -> ()
  }) : () -> ()
}) : () -> ()