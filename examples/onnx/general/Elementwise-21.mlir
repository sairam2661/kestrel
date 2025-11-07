"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<i64>, sym_name = "cast_lowering_floatint", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = i64} : (tensor<f32>) -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

