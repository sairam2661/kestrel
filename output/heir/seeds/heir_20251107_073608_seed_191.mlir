"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>, i32) -> tensor<4x8xi32>, sym_name = "tensor_and_scalar_operations"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 7 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x8xi32>, index, index) -> i32
    %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0, %1) : (i32, tensor<4x8xi32>, index, index) -> tensor<4x8xi32>
    %6 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %5, %0, %1) : (i32, tensor<4x8xi32>, index, index) -> tensor<4x8xi32>
    "func.return"(%7) : (tensor<4x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()