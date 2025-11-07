"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2xf32>, tensor<2x2xi64>) -> tensor<*xf32>, sym_name = "test_gather_nd_3"}> ({
  ^bb0(%arg0: tensor<2x2x2xf32>, %arg1: tensor<2x2xi64>):
    %0 = "onnx.GatherND"(%arg0, %arg1) {batch_dims = 0 : si64} : (tensor<2x2x2xf32>, tensor<2x2xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

