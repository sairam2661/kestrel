"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64x25600xf32>, tensor<64x100xi64>, tensor<64x100xf32>) -> tensor<*xf32>, sym_name = "test_scatter"}> ({
  ^bb0(%arg0: tensor<64x25600xf32>, %arg1: tensor<64x100xi64>, %arg2: tensor<64x100xf32>):
    %0 = "onnx.Scatter"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<64x25600xf32>, tensor<64x100xi64>, tensor<64x100xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

