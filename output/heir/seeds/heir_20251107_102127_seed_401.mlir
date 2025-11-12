"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "tensor_ext.assign_layout"(%arg0, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "tensor_ext.assign_layout"(%arg1, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "tensor_ext.add"(%1, %2) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()