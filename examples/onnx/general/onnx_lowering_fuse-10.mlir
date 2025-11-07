"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>, tensor<?x?x1xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<?x?x768xf32>, sym_name = "fuse_element_20"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>, %arg1: tensor<?x?x1xf32>, %arg2: tensor<768xf32>, %arg3: tensor<768xf32>):
    %0 = "onnx.Div"(%arg0, %arg1) : (tensor<?x?x768xf32>, tensor<?x?x1xf32>) -> tensor<?x?x768xf32>
    %1 = "onnx.Mul"(%0, %arg2) : (tensor<?x?x768xf32>, tensor<768xf32>) -> tensor<?x?x768xf32>
    %2 = "onnx.Add"(%1, %arg3) : (tensor<?x?x768xf32>, tensor<768xf32>) -> tensor<?x?x768xf32>
    "func.return"(%2) : (tensor<?x?x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

