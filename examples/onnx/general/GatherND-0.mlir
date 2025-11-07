"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xi64>) -> tensor<2xf32>, sym_name = "test_gather_nd_1"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xi64>):
    %0 = "onnx.GatherND"(%arg0, %arg1) {batch_dims = 0 : si64} : (tensor<2x2xf32>, tensor<2x2xi64>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

