"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<i1>, sym_name = "cast_lowering_float_to_bool", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = i1} : (tensor<f32>) -> tensor<i1>
    "func.return"(%0) : (tensor<i1>) -> ()
  }) : () -> ()
}) : () -> ()

