"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xi32>, sym_name = "test_cast_i64_i32"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2, 3], [4, 5], [6, 7]]> : tensor<3x2xi64>} : () -> tensor<3x2xi64>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i32} : (tensor<3x2xi64>) -> tensor<3x2xi32>
    "onnx.Return"(%1) : (tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

