"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_mutation"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %4 = "tensor.insert"(%0, %arg0, %1, %1) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      %5 = "tensor.insert"(%1, %4, %2, %2) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      %6 = "tensor.insert"(%2, %5, %3, %3) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      %7 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %8 = "tensor.insert"(%3, %7, %0, %0) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      "func.return"(%8) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()