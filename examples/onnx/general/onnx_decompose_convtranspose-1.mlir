"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>) -> tensor<1x2x5x5xf32>, sym_name = "test_convtrans_unitstrides"}> ({
  ^bb0(%arg0: tensor<1x1x3x3xf32>, %arg1: tensor<1x2x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64} : (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>, none) -> tensor<1x2x5x5xf32>
    "onnx.Return"(%1) : (tensor<1x2x5x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

