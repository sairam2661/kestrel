"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOpChain"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
      %2 = "tosa.const"() <{value = 5 : i32}> : () -> i32
      %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %0, "ne") : (i32, i32) -> i1
      %5 = "arith.andi"(%1, %4) : (i1, i1) -> i1
      "func.return"(%5) : (i1) -> ()
  }) : () -> ()
}) : () -> ()