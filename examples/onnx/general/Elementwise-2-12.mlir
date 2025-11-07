"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf64>) -> tensor<2xf32>, sym_name = "cast_float"}> ({
  ^bb0(%arg0: tensor<2xf64>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<2xf64>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

