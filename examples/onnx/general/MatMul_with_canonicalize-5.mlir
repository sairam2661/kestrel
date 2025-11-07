"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10x5xf32>, tensor<5xf32>) -> tensor<*xf32>, sym_name = "test_matmul6", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x10x5xf32>, %arg1: tensor<5xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x10x5xf32>, tensor<5xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

