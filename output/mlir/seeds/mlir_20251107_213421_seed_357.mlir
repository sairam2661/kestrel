"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%arg0, %arg1, "ne") : (i32, i32) -> i1
      %2 = "tosa.const"() <{values = dense<1> : tensor<1xi1>}> : () -> tensor<1xi1>
      %3 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()