"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tensor_ext.assign_layout"(%arg0) <{layout = "offset: 0, strides: [1, 8]"}> : (tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "tensor_ext.assign_layout"(%arg1) <{layout = "offset: 0, strides: [1, 8]"}> : (tensor<2x3xi32>) -> tensor<2x3xi32>
    %2 = "tfhe_rust.add"(%0, %1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()