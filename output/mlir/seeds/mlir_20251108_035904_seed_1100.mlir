"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, i32) -> tensor<2x3xi32>, sym_name = "add_and_scale"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %2 = "arith.addi"(%1, %arg1) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()