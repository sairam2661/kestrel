"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xf64>) -> tensor<*xf32>, sym_name = "cast_lowering_f64f32_10", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10xf64>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<10xf64>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

