"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xf32>, tensor<?xf32>) -> tensor<*xf32>, sym_name = "fuse_element_15"}> ({
  ^bb0(%arg0: tensor<4x5xf32>, %arg1: tensor<?xf32>):
    %0 = "onnx.Sqrt"(%arg0) : (tensor<4x5xf32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%0, %arg1) : (tensor<*xf32>, tensor<?xf32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

