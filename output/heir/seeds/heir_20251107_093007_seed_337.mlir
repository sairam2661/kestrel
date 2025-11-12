"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "tensor.insert"(%0, %arg0, %0) <{indices = [0, 0]}> : (tensor<4x4xi32>, tensor<4x4xi32>, tensor<2xi32>) -> tensor<4x4xi32>
      %2 = "tensor.extract"(%1, %0) <{indices = [0, 0]}> : (tensor<4x4xi32>, tensor<2xi32>) -> i32
      %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
      %5 = "tensor.insert"(%4, %1, %0) <{indices = [0, 0]}> : (i32, tensor<4x4xi32>, tensor<2xi32>) -> tensor<4x4xi32>
      "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()