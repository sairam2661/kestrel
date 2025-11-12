"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "test_tensor_insert_extract"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.insert"(%0, %arg0, %1, %2, %3) : (i32, tensor<4x4xi32>, index, index, index) -> tensor<4x4xi32>
    %5 = "tensor.extract"(%4, %1, %2, %3) : (tensor<4x4xi32>, index, index, index) -> i32
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()