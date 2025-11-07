"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "test_sum_rotation_indices"}> ({
  ^bb0(%arg2: tensor<16xi32>):
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "tensor_ext.rotate"(%arg2, %4) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %7 = "tensor_ext.rotate"(%6, %5) : (tensor<16xi32>, i32) -> tensor<16xi32>
    "func.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "test_normalize_negative"}> ({
  ^bb0(%arg1: tensor<16xi32>):
    %2 = "arith.constant"() <{value = -13 : i32}> : () -> i32
    %3 = "tensor_ext.rotate"(%arg1, %2) : (tensor<16xi32>, i32) -> tensor<16xi32>
    "func.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1x16xi32>) -> tensor<1x16xi32>, sym_name = "test_no_normalize_multidimension"}> ({
  ^bb0(%arg0: tensor<1x16xi32>):
    %0 = "arith.constant"() <{value = -13 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<1x16xi32>, i32) -> tensor<1x16xi32>
    "func.return"(%1) : (tensor<1x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

