"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20x30x40xf32>) -> tensor<*xf32>, sym_name = "test_identity"}> ({
  ^bb0(%arg0: tensor<10x20x30x40xf32>):
    %0 = "onnx.Identity"(%arg0) : (tensor<10x20x30x40xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

