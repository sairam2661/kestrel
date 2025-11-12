"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tensor_ext.assign_layout"(%arg0) <{layout = {offset = 0, strides = [32, 4]}}> : (tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "tensor_ext.assign_layout"(%arg1) <{layout = {offset = 0, strides = [32, 4]}}> : (tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow} > : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "arith.muli"(%3, %0) <{overflowFlags = #arith_overflow} > : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
    %5 = "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 8 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg2: tensor<8x8xi32>):
      %6 = "arith.addi"(%iv, %iv) : (index, index) -> index
      %7 = "tensor.extract"(%arg2, %6) : (tensor<8x8xi32>, index) -> i32
      %8 = "arith.addi"(%7, %0) : (i32, i32) -> i32
      %9 = "tensor.insert"(%8, %arg2, %6) : (i32, tensor<8x8xi32>, index) -> tensor<8x8xi32>
      "scf.yield"(%9) : (tensor<8x8xi32>) -> tensor<8x8xi32>
    }) : (tensor<8x8xi32>) -> tensor<8x8xi32>
    "func.return"(%5) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()