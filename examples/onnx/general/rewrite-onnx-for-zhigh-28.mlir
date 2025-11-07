"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x50257x768xf32>, tensor<768x1024xf32>) -> tensor<?x50257x1024xf32>, sym_name = "test_matmul_splitting_A"}> ({
  ^bb0(%arg0: tensor<?x50257x768xf32>, %arg1: tensor<768x1024xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x50257x768xf32>, tensor<768x1024xf32>) -> tensor<?x50257x1024xf32>
    "func.return"(%0) : (tensor<?x50257x1024xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?x?x768xf32>, tensor<768x50257xf32>) -> tensor<?x?x50257xf32>, sym_name = "test_matmul_splitting_B"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>, %arg1: tensor<768x50257xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x?x768xf32>, tensor<768x50257xf32>) -> tensor<?x?x50257xf32>
    "func.return"(%0) : (tensor<?x?x50257xf32>) -> ()
  }) : () -> ()
}) : () -> ()

