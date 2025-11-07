"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_relu"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Relu"(%arg0) : (tensor<10x10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

