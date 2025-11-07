"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2xf64>) -> tensor<?x2xf32>, sym_name = "cast_dyn"}> ({
  ^bb0(%arg0: tensor<?x2xf64>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<?x2xf64>) -> tensor<?x2xf32>
    "func.return"(%0) : (tensor<?x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

