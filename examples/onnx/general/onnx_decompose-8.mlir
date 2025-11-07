"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>) -> tensor<3xf32>, sym_name = "test_scaler_null"}> ({
  ^bb0(%arg0: tensor<3xi32>):
    %0 = "onnx.Scaler"(%arg0) : (tensor<3xi32>) -> tensor<3xf32>
    "onnx.Return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

