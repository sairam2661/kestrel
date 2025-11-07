"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x28x28xf32>) -> tensor<1x10xf32>, sym_name = "mnist"}> ({
  ^bb0(%arg0: tensor<1x1x28x28xf32>):
    %0 = "onnx.Constant"() {value = dense<[-0.0822488219, -0.108868778, -0.141039595, -0.204869166, -0.17913565, -0.215438381, -0.133805066, -0.195724562, -0.268250644, -0.258212209, -0.0761560649, 0.0132841459, -0.00444464432, -0.414740831, -0.17879115, -0.0386558883]> : tensor<16xf32>} : () -> tensor<16xf32>
    %1 = "onnx.Constant"() {value = dense<[-0.161539719, -0.433835655, 0.091641359, -0.0168522168, -0.0650264397, -0.131737873, 0.0204175506, -0.121110231]> : tensor<8xf32>} : () -> tensor<8xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<16x4x4x10xf32>} : () -> tensor<16x4x4x10xf32>
    %3 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<16x8x5x5xf32>} : () -> tensor<16x8x5x5xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<8x1x5x5xf32>} : () -> tensor<8x1x5x5xf32>
    %5 = "onnx.Constant"() {value = dense<[1, 256]> : tensor<2xi64>} : () -> tensor<2xi64>
    %6 = "onnx.Constant"() {value = dense<[256, 10]> : tensor<2xi64>} : () -> tensor<2xi64>
    %7 = "onnx.Constant"() {value = dense<[[-0.0448560268, 0.00779166119, 0.0681008175, 0.0299937408, -0.126409635, 0.14021875, -0.0552849025, -0.0493838154, 0.0843220502, -0.0545404144]]> : tensor<1x10xf32>} : () -> tensor<1x10xf32>
    %8 = "onnx.Reshape"(%2, %6) {allowzero = 0 : si64, onnx_node_name = "Times212_reshape1"} : (tensor<16x4x4x10xf32>, tensor<2xi64>) -> tensor<256x10xf32>
    %9 = "onnx.Conv"(%arg0, %4, %1) {auto_pad = "SAME_UPPER", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], strides = [1, 1]} : (tensor<1x1x28x28xf32>, tensor<8x1x5x5xf32>, tensor<8xf32>) -> tensor<1x8x28x28xf32>
    %10 = "onnx.Relu"(%9) {onnx_node_name = "ReLU32"} : (tensor<1x8x28x28xf32>) -> tensor<1x8x28x28xf32>
    %11 = "onnx.MaxPoolSingleOut"(%10) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "Pooling66", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x8x28x28xf32>) -> tensor<1x8x14x14xf32>
    %12 = "onnx.Conv"(%11, %3, %0) {auto_pad = "SAME_UPPER", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], strides = [1, 1]} : (tensor<1x8x14x14xf32>, tensor<16x8x5x5xf32>, tensor<16xf32>) -> tensor<1x16x14x14xf32>
    %13 = "onnx.Relu"(%12) {onnx_node_name = "ReLU114"} : (tensor<1x16x14x14xf32>) -> tensor<1x16x14x14xf32>
    %14 = "onnx.MaxPoolSingleOut"(%13) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "Pooling160", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [3, 3]} : (tensor<1x16x14x14xf32>) -> tensor<1x16x4x4xf32>
    %15 = "onnx.Reshape"(%14, %5) {allowzero = 0 : si64, onnx_node_name = "Times212_reshape0"} : (tensor<1x16x4x4xf32>, tensor<2xi64>) -> tensor<1x256xf32>
    %16 = "onnx.Gemm"(%15, %8, %7) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<1x256xf32>, tensor<256x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
    "func.return"(%16) : (tensor<1x10xf32>) -> ()
  }) : () -> ()
  "onnx.EntryPoint"() {func = @mnist} : () -> ()
}) {llvm.data_layout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64", llvm.target_triple = "s390x-ibm-linux", "onnx-mlir.symbol-postfix" = "model"} : () -> ()

