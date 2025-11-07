"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> tensor<2xf32>, sym_name = "cast_elimination"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<2xf32>) -> tensor<2xf32>
    "onnx.Return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

