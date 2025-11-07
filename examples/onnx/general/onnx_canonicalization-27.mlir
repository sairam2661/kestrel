"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x11x12x13xf32>) -> tensor<10x11x12x13xf32>, sym_name = "test_transpose_fusion_removal"}> ({
  ^bb0(%arg0: tensor<10x11x12x13xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [3, 2, 1, 0]} : (tensor<10x11x12x13xf32>) -> tensor<13x12x11x10xf32>
    %1 = "onnx.Transpose"(%0) {perm = [3, 2, 1, 0]} : (tensor<13x12x11x10xf32>) -> tensor<10x11x12x13xf32>
    "onnx.Return"(%1) : (tensor<10x11x12x13xf32>) -> ()
  }) : () -> ()
}) : () -> ()

