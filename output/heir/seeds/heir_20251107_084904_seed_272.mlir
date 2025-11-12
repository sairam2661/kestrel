"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> (tensor<4xi32>, i32), sym_name = "mixed_tensor_and_scalar"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "tensor_ext.assign_layout"(%arg0) <{layout = "offset:0,strides:[1,2]"}> : (tensor<4xi32>) -> tensor<4xi32>
    %3 = "tensor.extract"(%2, %1) : (tensor<4xi32>, i32) -> i32
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %2, %1) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%5, %4) : (tensor<4xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()