"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>) -> tensor<?x10xf32>, sym_name = "test_leakyrelu_dynamic"}> ({
  ^bb0(%arg0: tensor<?x10xf32>):
    %0 = "onnx.LeakyRelu"(%arg0) {alpha = 5.000000e-01 : f32} : (tensor<?x10xf32>) -> tensor<?x10xf32>
    "func.return"(%0) : (tensor<?x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

