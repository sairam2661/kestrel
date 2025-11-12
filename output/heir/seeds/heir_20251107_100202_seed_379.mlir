"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_fuzz_test"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<16xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<16xi32>, index) -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    %6 = "tensor_ext.rotate"(%5, %1) <{dim = 0, offset = -4}> : (tensor<16xi32>, index) -> tensor<16xi32>
    "func.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()