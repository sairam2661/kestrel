"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_softmax_v13_axis_one"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = 1 : si64} : (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

