"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xf32>, tensor<3xi1>) -> tensor<?x2xf32>, sym_name = "compress_axis0"}> ({
  ^bb0(%arg0: tensor<3x2xf32>, %arg1: tensor<3xi1>):
    %0 = "onnx.Compress"(%arg0, %arg1) {axis = 0 : si64} : (tensor<3x2xf32>, tensor<3xi1>) -> tensor<?x2xf32>
    "func.return"(%0) : (tensor<?x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

