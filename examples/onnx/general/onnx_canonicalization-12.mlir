"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x11x12x13xf32>) -> tensor<10x11x12x13xf32>, sym_name = "test_transpose_removal"}> ({
  ^bb0(%arg0: tensor<10x11x12x13xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 1, 2, 3]} : (tensor<10x11x12x13xf32>) -> tensor<10x11x12x13xf32>
    "onnx.Return"(%0) : (tensor<10x11x12x13xf32>) -> ()
  }) : () -> ()
}) : () -> ()

