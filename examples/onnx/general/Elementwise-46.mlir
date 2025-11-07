"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "acosh_function"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Acosh"(%arg0) : (tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%0) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

