"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>) -> tensor<*xf32>, sym_name = "test_scaler_no_scale_int"}> ({
  ^bb0(%arg0: tensor<3xi32>):
    %0 = "onnx.Scaler"(%arg0) {offset = [1986.99939 : f32, 0.99999988 : f32, 0.999999701 : f32]} : (tensor<3xi32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

