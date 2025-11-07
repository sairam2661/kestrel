"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64x42xf32>, tensor<?x?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_matmul_4"}> ({
  ^bb0(%arg0: tensor<64x42xf32>, %arg1: tensor<?x?x?x?xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<64x42xf32>, tensor<?x?x?x?xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

