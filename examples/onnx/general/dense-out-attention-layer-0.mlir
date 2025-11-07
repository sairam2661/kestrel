"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>, tensor<768x768xf32>) -> tensor<?x?x768xf32>, sym_name = "test_matmul_add_add"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>, %arg1: tensor<768x768xf32>):
    %0 = "onnx.Constant"() {value = dense<5.000000e+00> : tensor<768xf32>} : () -> tensor<768xf32>
    %1 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x?x768xf32>, tensor<768x768xf32>) -> tensor<?x?x768xf32>
    %2 = "onnx.Add"(%0, %1) : (tensor<768xf32>, tensor<?x?x768xf32>) -> tensor<?x?x768xf32>
    %3 = "onnx.Add"(%2, %arg0) : (tensor<?x?x768xf32>, tensor<?x?x768xf32>) -> tensor<?x?x768xf32>
    "func.return"(%3) : (tensor<?x?x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

