"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<f32>, tensor<?x4xi32>), sym_name = "write_binary"}> ({
    %0 = "arith.constant"() <{value = dense<4.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "flow.tensor.dynamic_constant"() <{value = dense<[[0, 1, 2, 3], [4, 5, 6, 7]]> : tensor<2x4xi32>}> : () -> tensor<?x4xi32>
    "func.return"(%0, %1) : (tensor<f32>, tensor<?x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>, tensor<?x4xi32>) -> (tensor<f32>, tensor<?x4xi32>), sym_name = "echo_binary"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<?x4xi32>):
    "func.return"(%arg0, %arg1) : (tensor<f32>, tensor<?x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

