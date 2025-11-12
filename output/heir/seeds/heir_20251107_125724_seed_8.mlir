"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<2x4xi32>, %arg1: tensor<2x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>
    %1 = "tensor_ext.rotate"(%0) <{dim = 0 : index, shift = 1 : index}> : (tensor<2x4xi32>) -> tensor<2x4xi32>
    %2 = "secret.generic"(%1) ({
    ^bb0(%arg2: tensor<2x4xi32>):
      %3 = "tensor.extract"(%arg2, 0, 0) : (tensor<2x4xi32>, index, index) -> i32
      %4 = "arith.muli"(%3, 2) <{overflowFlags = #arith_overflow_} > : (i32, i32) -> i32
      %5 = "tensor.insert"(%4, %arg2, 0, 0) : (i32, tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
      "secret.yield"(%5) : (tensor<2x4xi32>) -> ()
    }) : (tensor<2x4xi32>) -> tensor<2x4xi32>
    "func.return"(%2) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()