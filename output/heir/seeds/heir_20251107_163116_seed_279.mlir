"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_complexity_test"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -3 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %3 = "arith.addi"(%2, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.muli"(%3, %1) : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()