"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21xi32>) -> tensor<13x21xi32>, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: tensor<13x21xi32>):
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (tensor<13x21xi32>, i32) -> tensor<13x21xi32>
    %3 = "arith.cmpi"(%2, %1, "eq") : (tensor<13x21xi32>, i32, i32) -> tensor<13x21xi1>
    %4 = "arith.cmpi"(%3, %1, "eq") : (tensor<13x21xi1>, i32, i32) -> tensor<13x21xi1>
    "func.return"(%4) : (tensor<13x21xi1>) -> ()
  }) : () -> ()
}) : () -> ()