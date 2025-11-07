"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "test_identity_identity"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
    %0 = "onnx.Identity"(%arg0) : (tensor<10x10xf32>) -> tensor<10x10xf32>
    %1 = "onnx.Identity"(%arg1) : (tensor<10x10xf32>) -> tensor<10x10xf32>
    %2 = "onnx.Add"(%0, %1) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    "onnx.Return"(%2) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

