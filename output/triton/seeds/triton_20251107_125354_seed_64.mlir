"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.subi"(%1, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %0) : (i32, i32) -> i32
      %5 = "arith.remsi"(%4, %0) : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %0, "eq") : (i32, i32, i32) -> i1
      %7 = "arith.select"(%6, %4, %3) : (i1, i32, i32) -> i32
      "tt.return"(%7, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()