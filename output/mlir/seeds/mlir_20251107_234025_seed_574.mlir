"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi64>, tensor<4x3xi64>) -> tensor<4x3xi64>, sym_name = "test_add_mul"}> ({
  ^bb0(%arg0: tensor<4x3xi64>, %arg1: tensor<4x3xi64>):
    %0 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4x3xi64>, tensor<4x3xi64>) -> tensor<4x3xi64>
    %2 = "arith.muli"(%1, %0) : (tensor<4x3xi64>, i64) -> tensor<4x3xi64>
    "func.return"(%2) : (tensor<4x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()