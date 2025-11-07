"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x50257x768xf32>, tensor<768x50258xf32>) -> tensor<?x50257x50258xf32>, sym_name = "test_matmul_splitting_A_B"}> ({
  ^bb0(%arg0: tensor<?x50257x768xf32>, %arg1: tensor<768x50258xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x50257x768xf32>, tensor<768x50258xf32>) -> tensor<?x50257x50258xf32>
    "func.return"(%0) : (tensor<?x50257x50258xf32>) -> ()
  }) : () -> ()
}) : () -> ()

