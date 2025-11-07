"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024x32x1xf32>) -> tensor<1024x32x1xf32>, sym_name = "add_cpu"}> ({
  ^bb0(%arg0: tensor<1024x32x1xf32>):
    %0 = "onnx.Add"(%arg0, %arg0) : (tensor<1024x32x1xf32>, tensor<1024x32x1xf32>) -> tensor<1024x32x1xf32>
    "func.return"(%0) : (tensor<1024x32x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

