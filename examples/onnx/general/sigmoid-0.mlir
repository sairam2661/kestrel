"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_sigmoid"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<10x10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

