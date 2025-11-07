"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>) -> tensor<*xf32>, sym_name = "test_inception_v2_6_snippet"}> ({
  ^bb0(%arg0: tensor<1x3x224x224xf32>, %arg1: tensor<64x3x7x7xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<1.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %3 = "onnx.Constant"() {value = dense<3.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "onnx.Constant"() {value = dense<4.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %5 = "onnx.Constant"() {value = dense<5.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %6 = "onnx.Constant"() {value = dense<6.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %7 = "onnx.Constant"() {value = dense<0.699999988> : tensor<64x64x1x1xf32>} : () -> tensor<64x64x1x1xf32>
    %8 = "onnx.Constant"() {value = dense<8.000000e-01> : tensor<64xf32>} : () -> tensor<64xf32>
    %9 = "onnx.Constant"() {value = dense<0.899999976> : tensor<64xf32>} : () -> tensor<64xf32>
    %10 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %11 = "onnx.Constant"() {value = dense<1.100000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %12 = "onnx.Constant"() {value = dense<1.200000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %13 = "onnx.Constant"() {value = dense<1.300000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %14 = "onnx.Constant"() {value = dense<1.400000e+00> : tensor<192x64x3x3xf32>} : () -> tensor<192x64x3x3xf32>
    %15 = "onnx.Constant"() {value = dense<1.500000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %16 = "onnx.Constant"() {value = dense<1.600000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %17 = "onnx.Constant"() {value = dense<1.700000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %18 = "onnx.Constant"() {value = dense<1.800000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %19 = "onnx.Constant"() {value = dense<1.900000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %20 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %21 = "onnx.Constant"() {value = dense<2.100000e+00> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %22 = "onnx.Constant"() {value = dense<2.200000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %23 = "onnx.Constant"() {value = dense<2.300000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %24 = "onnx.Constant"() {value = dense<2.400000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %25 = "onnx.Constant"() {value = dense<2.500000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %26 = "onnx.Constant"() {value = dense<2.600000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %27 = "onnx.Constant"() {value = dense<2.700000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %28 = "onnx.Constant"() {value = dense<2.800000e+00> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %29 = "onnx.Constant"() {value = dense<2.900000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %30 = "onnx.Constant"() {value = dense<3.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %31 = "onnx.Constant"() {value = dense<3.100000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %32 = "onnx.Constant"() {value = dense<3.200000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %33 = "onnx.Constant"() {value = dense<3.300000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %34 = "onnx.Constant"() {value = dense<3.400000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %35 = "onnx.Constant"() {value = dense<3.500000e+00> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %36 = "onnx.Constant"() {value = dense<3.600000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %37 = "onnx.Constant"() {value = dense<3.700000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %38 = "onnx.Constant"() {value = dense<3.800000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %39 = "onnx.Constant"() {value = dense<3.900000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %40 = "onnx.Constant"() {value = dense<4.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %41 = "onnx.Constant"() {value = dense<4.100000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %42 = "onnx.Constant"() {value = dense<4.200000e+00> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %43 = "onnx.Constant"() {value = dense<4.300000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %44 = "onnx.Constant"() {value = dense<4.400000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %45 = "onnx.Constant"() {value = dense<4.500000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %46 = "onnx.Constant"() {value = dense<4.600000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %47 = "onnx.Constant"() {value = dense<4.700000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %48 = "onnx.Constant"() {value = dense<4.800000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %49 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [7, 7], pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, none) -> tensor<*xf32>
    %50 = "onnx.BatchNormalizationInferenceMode"(%49, %1, %2, %3, %4) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %51 = "onnx.Mul"(%50, %5) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %52 = "onnx.Add"(%51, %6) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %53 = "onnx.Relu"(%52) : (tensor<*xf32>) -> tensor<*xf32>
    %54 = "onnx.MaxPoolSingleOut"(%53) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], pads = [0, 0, 1, 1], storage_order = 0 : si64, strides = [2, 2]} : (tensor<*xf32>) -> tensor<*xf32>
    %55 = "onnx.Conv"(%54, %7, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<*xf32>, tensor<64x64x1x1xf32>, none) -> tensor<*xf32>
    %56 = "onnx.BatchNormalizationInferenceMode"(%55, %8, %9, %10, %11) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %57 = "onnx.Mul"(%56, %12) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %58 = "onnx.Add"(%57, %13) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %59 = "onnx.Relu"(%58) : (tensor<*xf32>) -> tensor<*xf32>
    %60 = "onnx.Conv"(%59, %14, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<*xf32>, tensor<192x64x3x3xf32>, none) -> tensor<*xf32>
    %61 = "onnx.BatchNormalizationInferenceMode"(%60, %15, %16, %17, %18) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) -> tensor<*xf32>
    %62 = "onnx.Mul"(%61, %19) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<192xf32>) -> tensor<*xf32>
    %63 = "onnx.Add"(%62, %20) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<192xf32>) -> tensor<*xf32>
    %64 = "onnx.Relu"(%63) : (tensor<*xf32>) -> tensor<*xf32>
    %65 = "onnx.MaxPoolSingleOut"(%64) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], pads = [0, 0, 1, 1], storage_order = 0 : si64, strides = [2, 2]} : (tensor<*xf32>) -> tensor<*xf32>
    %66 = "onnx.Conv"(%65, %21, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<*xf32>, tensor<64x192x1x1xf32>, none) -> tensor<*xf32>
    %67 = "onnx.BatchNormalizationInferenceMode"(%66, %22, %23, %24, %25) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %68 = "onnx.Mul"(%67, %26) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %69 = "onnx.Add"(%68, %27) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %70 = "onnx.Relu"(%69) : (tensor<*xf32>) -> tensor<*xf32>
    %71 = "onnx.Conv"(%65, %28, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<*xf32>, tensor<64x192x1x1xf32>, none) -> tensor<*xf32>
    %72 = "onnx.BatchNormalizationInferenceMode"(%71, %29, %30, %31, %32) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %73 = "onnx.Mul"(%72, %33) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %74 = "onnx.Add"(%73, %34) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %75 = "onnx.Relu"(%74) : (tensor<*xf32>) -> tensor<*xf32>
    %76 = "onnx.Conv"(%75, %35, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<*xf32>, tensor<64x64x3x3xf32>, none) -> tensor<*xf32>
    %77 = "onnx.BatchNormalizationInferenceMode"(%76, %36, %37, %38, %39) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %78 = "onnx.Mul"(%77, %40) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %79 = "onnx.Add"(%78, %41) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %80 = "onnx.Relu"(%79) : (tensor<*xf32>) -> tensor<*xf32>
    %81 = "onnx.Conv"(%65, %42, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<*xf32>, tensor<64x192x1x1xf32>, none) -> tensor<*xf32>
    %82 = "onnx.BatchNormalizationInferenceMode"(%81, %43, %44, %45, %46) {epsilon = 9.99999974E-6 : f32, is_test = 1 : si64, momentum = 0.899999976 : f32} : (tensor<*xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<*xf32>
    %83 = "onnx.Mul"(%82, %47) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %84 = "onnx.Add"(%83, %48) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<*xf32>, tensor<64xf32>) -> tensor<*xf32>
    %85 = "onnx.Relu"(%84) : (tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%85) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

