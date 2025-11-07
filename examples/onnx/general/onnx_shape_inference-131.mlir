"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xui8>, sym_name = "test_cast_2"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = ui8} : (tensor<2x3x4xf32>) -> tensor<*xui8>
    "onnx.Return"(%0) : (tensor<*xui8>) -> ()
  }) : () -> ()
}) : () -> ()

