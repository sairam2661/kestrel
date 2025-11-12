"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<2x2xi32>) -> tensor<4x4xi32>, sym_name = "tensor_insertion_mixed_types"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "tensor.insert"(%2, %arg0, %0, %1) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    %7 = "tensor.insert"(%5, %6, %3, %4) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    "func.return"(%7) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()