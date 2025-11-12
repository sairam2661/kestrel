"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tensor_ext.assign_layout"(%arg0) <{layout = "offset:0, strides:[4]"}> : (tensor<4xi32>) -> tensor<4xi32>
    %1 = "tensor_ext.assign_layout"(%arg1) <{layout = "offset:0, strides:[4]"}> : (tensor<4xi32>) -> tensor<4xi32>
    %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %3 = "tensor.extract"(%0, %iv) : (tensor<4xi32>, index) -> i32
      %4 = "tensor.extract"(%1, %iv) : (tensor<4xi32>, index) -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "scf.yield"(%5) : (i32) -> ()
    }) : (tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()