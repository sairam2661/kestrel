"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x8x?xf32>, tensor<?x?xf32>) -> tensor<?x8x?xf32>, sym_name = "test_center_crop_pad_2"}> ({
  ^bb0(%arg0: tensor<?x8x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "onnx.Dim"(%arg1) {axis = 0 : si64} : (tensor<?x?xf32>) -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg1) {axis = 1 : si64} : (tensor<?x?xf32>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.CenterCropPad"(%arg0, %2) {axes = [-3, 2]} : (tensor<?x8x?xf32>, tensor<2xi64>) -> tensor<?x8x?xf32>
    "func.return"(%3) : (tensor<?x8x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

