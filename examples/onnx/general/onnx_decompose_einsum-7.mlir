"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>) -> tensor<f32>, sym_name = "test_einsum_trace"}> ({
  ^bb0(%arg0: tensor<3x3xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "ii"} : (tensor<3x3xf32>) -> tensor<f32>
    "onnx.Return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

