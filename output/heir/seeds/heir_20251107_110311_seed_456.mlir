"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "adjust_tensor"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "tensor.extract"(%arg0, %0) : (tensor<4x4xi32>, index) -> i32
      %2 = "arith.muli"(%1, %arg1) : (i32, i32) -> i32
      %3 = "tensor.insert"(%2, %arg0, %0) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
      "func.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()