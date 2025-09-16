"builtin.module"() ({
  "func.func"() <{function_type = () -> (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32), sym_name = "extract_from_tensor.from_elements_3d"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %6 = "arith.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %7 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %8 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %9 = "arith.constant"() <{value = 9.000000e+00 : f32}> : () -> f32
    %10 = "arith.constant"() <{value = 1.000000e+01 : f32}> : () -> f32
    %11 = "arith.constant"() <{value = 1.100000e+01 : f32}> : () -> f32
    %12 = "tensor.from_elements"(%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> tensor<3x2x2xf32>
    %13 = "arith.constant"() <{value = 0 : index}> : () -> index
    %14 = "arith.constant"() <{value = 1 : index}> : () -> index
    %15 = "arith.constant"() <{value = 2 : index}> : () -> index
    %16 = "tensor.extract"(%12, %13, %13, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %17 = "tensor.extract"(%12, %13, %13, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %18 = "tensor.extract"(%12, %13, %14, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %19 = "tensor.extract"(%12, %13, %14, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %20 = "tensor.extract"(%12, %14, %13, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %21 = "tensor.extract"(%12, %14, %13, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %22 = "tensor.extract"(%12, %14, %14, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %23 = "tensor.extract"(%12, %14, %14, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %24 = "tensor.extract"(%12, %15, %13, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %25 = "tensor.extract"(%12, %15, %13, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %26 = "tensor.extract"(%12, %15, %14, %13) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %27 = "tensor.extract"(%12, %15, %14, %14) : (tensor<3x2x2xf32>, index, index, index) -> f32
    "func.return"(%16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27) : (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

