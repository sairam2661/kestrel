"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> tensor<2xi32>, sym_name = "cast_int"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = i32} : (tensor<2xf32>) -> tensor<2xi32>
    "func.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

