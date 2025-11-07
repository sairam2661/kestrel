"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_pad"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 1.200000e+00], [2.300000e+00, 3.400000e+00], [4.500000e+00, 5.700000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<[0, 2, 0, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Pad"(%0, %1, %2, %2) {mode = "constant"} : (tensor<3x2xf32>, tensor<4xi64>, none, none) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_pad_rank0"}> ({
    %0 = "onnx.Constant"() {value = dense<3.140000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Constant"() {value = dense<> : tensor<0xi64>} : () -> tensor<0xi64>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Pad"(%0, %1, %2, %2) {mode = "constant"} : (tensor<f32>, tensor<0xi64>, none, none) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<*xf16>, sym_name = "test_pad_empty"}> ({
    %0 = "onnx.Constant"() {value = dense<> : tensor<2x0xf16>} : () -> tensor<2x0xf16>
    %1 = "onnx.Constant"() {value = dense<[0, 1, 1, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "onnx.Constant"() {value = dense<3.140630e+00> : tensor<f16>} : () -> tensor<f16>
    %3 = "onnx.NoValue"() {value} : () -> none
    %4 = "onnx.Pad"(%0, %1, %2, %3) {mode = "constant"} : (tensor<2x0xf16>, tensor<4xi64>, tensor<f16>, none) -> tensor<*xf16>
    "onnx.Return"(%4) : (tensor<*xf16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<*xf16>, sym_name = "test_pad_edge"}> ({
    %0 = "onnx.Constant"() {value = dense<3.140630e+00> : tensor<3x2xf16>} : () -> tensor<3x2xf16>
    %1 = "onnx.Constant"() {value = dense<0> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Pad"(%0, %1, %2, %2) {mode = "edge"} : (tensor<3x2xf16>, tensor<4xi64>, none, none) -> tensor<*xf16>
    "onnx.Return"(%3) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

