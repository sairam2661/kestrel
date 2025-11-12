"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_tensor_op"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x4xi32>, index, index) -> i32
      %3 = "arith.constant"() <{value = 3 : index}> : () -> index
      %4 = "tensor.extract"(%arg1, %0, %3) : (tensor<4x4xi32>, index, index) -> i32
      %5 = "arith.addi"(%2, %4) : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg0, %0, %1) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      "func.return"(%6) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "nested_tensor_op"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x4xi32>, index, index) -> i32
      %3 = "arith.constant"() <{value = 2 : index}> : () -> index
      %4 = "tensor.extract"(%arg1, %0, %3) : (tensor<4x4xi32>, index, index) -> i32
      %5 = "arith.muli"(%2, %4) : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg0, %0, %1) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      "func.return"(%6) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()