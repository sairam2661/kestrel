"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xf32>, tensor<1024xf32>) -> tensor<1024xf32>, sym_name = "test_fuse_element3"}> ({
  ^bb0(%arg0: tensor<1024xf32>, %arg1: tensor<1024xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<1024xf32>, tensor<1024xf32>) -> tensor<1024xf32>
    %1 = "onnx.Sqrt"(%0) : (tensor<1024xf32>) -> tensor<1024xf32>
    %2 = "onnx.Sqrt"(%1) : (tensor<1024xf32>) -> tensor<1024xf32>
    "func.return"(%2) : (tensor<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

