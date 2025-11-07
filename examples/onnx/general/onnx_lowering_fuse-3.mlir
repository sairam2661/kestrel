"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<1xf32>) -> tensor<?xf32>, sym_name = "test_fuse_element7"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<1xf32>):
    %0 = "onnx.Pow"(%arg0, %arg1) : (tensor<?xf32>, tensor<1xf32>) -> tensor<?xf32>
    %1 = "onnx.Sqrt"(%0) : (tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%1) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

