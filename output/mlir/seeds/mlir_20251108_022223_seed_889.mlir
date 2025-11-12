"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>, sym_name = "unusual_addition"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    %3 = "arith.addi"(%2, %0) : (tensor<3x4xi32>, i32) -> tensor<3x4xi32>
    %4 = "arith.addi"(%3, %1) : (tensor<3x4xi32>, i32) -> tensor<3x4xi32>
    "func.return"(%4) : (tensor<3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()