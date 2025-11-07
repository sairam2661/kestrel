"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xf32>, sym_name = "test_cast_i32_f32"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2, 3], [4, 5], [6, 7]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = f32} : (tensor<3x2xi32>) -> tensor<3x2xf32>
    "onnx.Return"(%1) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

