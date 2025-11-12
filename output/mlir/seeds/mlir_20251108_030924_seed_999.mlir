"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %select = "tosa.select"(%cmp, %arg0, %arg1) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%select) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()