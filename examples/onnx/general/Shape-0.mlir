"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8x16xf32>) -> tensor<4xi64>, sym_name = "test_shape1"}> ({
  ^bb0(%arg0: tensor<2x4x8x16xf32>):
    %0 = "onnx.Shape"(%arg0) {start = 0 : si64} : (tensor<2x4x8x16xf32>) -> tensor<4xi64>
    "func.return"(%0) : (tensor<4xi64>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?x4x8x16xf32>) -> tensor<4xi64>, sym_name = "test_shape2"}> ({
  ^bb0(%arg0: tensor<?x4x8x16xf32>):
    %0 = "onnx.Shape"(%arg0) {start = 0 : si64} : (tensor<?x4x8x16xf32>) -> tensor<4xi64>
    "func.return"(%0) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()

