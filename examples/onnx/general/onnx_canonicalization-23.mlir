"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x11x12x13xf32>) -> tensor<10x11x12x13xf32>, sym_name = "test_transpose_besides_hardsigmoid_fusion"}> ({
  ^bb0(%arg0: tensor<10x11x12x13xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 3, 1, 2]} : (tensor<10x11x12x13xf32>) -> tensor<10x13x11x12xf32>
    %1 = "onnx.HardSigmoid"(%0) {alpha = 1.000000e-01 : f32, beta = 2.000000e-01 : f32} : (tensor<10x13x11x12xf32>) -> tensor<10x13x11x12xf32>
    %2 = "onnx.Transpose"(%1) {perm = [0, 2, 3, 1]} : (tensor<10x13x11x12xf32>) -> tensor<10x11x12x13xf32>
    "onnx.Return"(%2) : (tensor<10x11x12x13xf32>) -> ()
  }) : () -> ()
}) : () -> ()

