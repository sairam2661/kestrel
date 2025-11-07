"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xf32>, tensor<13x21x1xf32>) -> tensor<13x21x1xf32>, sym_name = "test_sub"}> ({
  ^bb0(%arg0: tensor<13x21x1xf32>, %arg1: tensor<13x21x1xf32>):
    %0 = "onnx.Sub"(%arg0, %arg1) : (tensor<13x21x1xf32>, tensor<13x21x1xf32>) -> tensor<13x21x1xf32>
    "func.return"(%0) : (tensor<13x21x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

