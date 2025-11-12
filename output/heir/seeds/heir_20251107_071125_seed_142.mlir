"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "test_tensor_shuffle_and_subtract"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "tensor_ext.shuffle"(%arg0, %0) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.subi"(%1, %2) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %4 = "arith.constant"() <{value = -5 : i32}> : () -> i32
    %5 = "arith.muli"(%3, %4) : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()