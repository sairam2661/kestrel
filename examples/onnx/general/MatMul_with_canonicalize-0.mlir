"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<*xf32>, sym_name = "test_matmul1", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

