"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>) -> tensor<3xf32>, sym_name = "test_scaler_constant"}> ({
  ^bb0(%arg0: tensor<3xf32>):
    %0 = "onnx.Scaler"(%arg0) {offset = [1986.99939 : f32], scale = [3.125000e-02 : f32]} : (tensor<3xf32>) -> tensor<3xf32>
    "onnx.Return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

