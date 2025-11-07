"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "test_exp"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Exp"(%arg0) : (tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%0) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

