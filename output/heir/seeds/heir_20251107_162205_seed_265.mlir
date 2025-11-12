"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.tensor_ext}, {tensor_ext.tensor_ext}, {tensor_ext.tensor_ext}], function_type = (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_rotate"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%arg2, %3) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.addi"(%1, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.addi"(%5, %1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()