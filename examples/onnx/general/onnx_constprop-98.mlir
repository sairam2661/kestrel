"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xi32>, sym_name = "test_cast_i32_i1_i32"}> ({
    %0 = "onnx.Constant"() {value = dense<[-1, 0, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i1} : (tensor<4xi32>) -> tensor<4xi1>
    %2 = "onnx.Cast"(%1) {saturate = 1 : si64, to = i32} : (tensor<4xi1>) -> tensor<4xi32>
    "onnx.Return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

