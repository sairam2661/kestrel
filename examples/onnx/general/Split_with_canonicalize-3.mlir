"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x64xf32>) -> (tensor<*xf32>, tensor<*xf32>), sym_name = "test_splitv11_unknown_dimension_equal_split"}> ({
  ^bb0(%arg0: tensor<?x?x64xf32>):
    %0:2 = "onnx.SplitV11"(%arg0) {axis = 1 : si64} : (tensor<?x?x64xf32>) -> (tensor<*xf32>, tensor<*xf32>)
    "func.return"(%0#0, %0#1) : (tensor<*xf32>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

