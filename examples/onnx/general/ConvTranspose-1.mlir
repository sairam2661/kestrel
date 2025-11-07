"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2x3x3xf32>, tensor<2x2x3x3xf32>) -> tensor<?x2x5x5xf32>, sym_name = "test_dynamic_shape"}> ({
  ^bb0(%arg0: tensor<?x2x3x3xf32>, %arg1: tensor<2x2x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64} : (tensor<?x2x3x3xf32>, tensor<2x2x3x3xf32>, none) -> tensor<?x2x5x5xf32>
    "func.return"(%1) : (tensor<?x2x5x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

