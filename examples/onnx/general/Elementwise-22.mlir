"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f16>) -> tensor<f32>, sym_name = "cast_lowering_f16f32", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<f16>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<f16>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

