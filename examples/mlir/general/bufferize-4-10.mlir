"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> tensor<3x2x2xf32>, sym_name = "tensor.from_elements_3d"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %6 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %7 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %8 = "arith.constant"() <{value = 9.000000e+00 : f32}> : () -> f32
    %9 = "arith.constant"() <{value = 1.000000e+01 : f32}> : () -> f32
    %10 = "arith.constant"() <{value = 1.100000e+01 : f32}> : () -> f32
    %11 = "tensor.from_elements"(%arg0, %0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10) : (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> tensor<3x2x2xf32>
    "func.return"(%11) : (tensor<3x2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

