"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "tensor.extract"(%arg0, %0, %0) : (tensor<4x4xi32>, index, index) -> i32
      %3 = "tensor.extract"(%arg1, %1, %1) : (tensor<4x4xi32>, index, index) -> i32
      %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      %5 = "tensor.insert"(%4, %arg0, %0, %0) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      %6 = "tensor_ext.rotate"(%5) <{axis = [0, 1]}> : (tensor<4x4xi32>) -> tensor<4x4xi32>
      "func.return"(%6) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()