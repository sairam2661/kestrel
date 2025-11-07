"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?xf32>) -> tensor<*xf32>, sym_name = "test_onnx_to_matmul3dbcast_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x?x?xf32>, tensor<?x?xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

