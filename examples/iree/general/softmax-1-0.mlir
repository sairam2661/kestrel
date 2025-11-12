"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "softmax_static_10x256x256xf32"}> ({
    %11 = "util.unfoldable_constant"() <{value = dense<5.000000e+00> : tensor<10x256x256xf32>}> : () -> tensor<10x256x256xf32>
    %12 = "tensor.empty"() : () -> tensor<10x256x256xf32>
    %13 = "linalg.softmax"(%11, %12) <{dimension = 2 : i64}> : (tensor<10x256x256xf32>, tensor<10x256x256xf32>) -> tensor<10x256x256xf32>
    "check.expect_almost_eq_const"(%13) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<3.906250e-03> : tensor<10x256x256xf32>}> : (tensor<10x256x256xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "softmax_dynamic_10x256x256xf32"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<5.000000e+00> : tensor<10x256x256xf32>}> : () -> tensor<?x?x?xf32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.dim"(%0, %1) : (tensor<?x?x?xf32>, index) -> index
    %5 = "tensor.dim"(%0, %2) : (tensor<?x?x?xf32>, index) -> index
    %6 = "tensor.dim"(%0, %3) : (tensor<?x?x?xf32>, index) -> index
    %7 = "tensor.empty"(%4, %5, %6) : (index, index, index) -> tensor<?x?x?xf32>
    %8 = "linalg.softmax"(%0, %7) <{dimension = 2 : i64}> : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %9 = "util.optimization_barrier"(%8) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %10 = "tensor.cast"(%9) : (tensor<?x?x?xf32>) -> tensor<10x256x256xf32>
    "check.expect_almost_eq_const"(%10) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<3.906250e-03> : tensor<10x256x256xf32>}> : (tensor<10x256x256xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

