"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x8x16xf32>) -> tensor<*xi64>, sym_name = "test_shape2"}> ({
  ^bb0(%arg0: tensor<?x4x8x16xf32>):
    %0 = "onnx.Shape"(%arg0) {start = 0 : si64} : (tensor<?x4x8x16xf32>) -> tensor<*xi64>
    "onnx.Return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

