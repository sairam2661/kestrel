"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "concat_i8_static_dim0"}> ({
    %25 = "arith.constant"() <{value = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %26 = "arith.constant"() <{value = dense<2> : tensor<1xi8>}> : () -> tensor<1xi8>
    %27 = "util.optimization_barrier"(%25) : (tensor<1xi8>) -> tensor<1xi8>
    %28 = "util.optimization_barrier"(%26) : (tensor<1xi8>) -> tensor<1xi8>
    %29 = "tensor.concat"(%27, %28) <{dim = 0 : i64}> : (tensor<1xi8>, tensor<1xi8>) -> tensor<2xi8>
    "check.expect_eq_const"(%29) <{value = dense<[1, 2]> : tensor<2xi8>}> : (tensor<2xi8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concat_i16_static_dim0"}> ({
    %20 = "arith.constant"() <{value = dense<1> : tensor<1xi16>}> : () -> tensor<1xi16>
    %21 = "arith.constant"() <{value = dense<2> : tensor<1xi16>}> : () -> tensor<1xi16>
    %22 = "util.optimization_barrier"(%20) : (tensor<1xi16>) -> tensor<1xi16>
    %23 = "util.optimization_barrier"(%21) : (tensor<1xi16>) -> tensor<1xi16>
    %24 = "tensor.concat"(%22, %23) <{dim = 0 : i64}> : (tensor<1xi16>, tensor<1xi16>) -> tensor<2xi16>
    "check.expect_eq_const"(%24) <{value = dense<[1, 2]> : tensor<2xi16>}> : (tensor<2xi16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concat_i32_static_dim0"}> ({
    %15 = "arith.constant"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %16 = "arith.constant"() <{value = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %17 = "util.optimization_barrier"(%15) : (tensor<1xi32>) -> tensor<1xi32>
    %18 = "util.optimization_barrier"(%16) : (tensor<1xi32>) -> tensor<1xi32>
    %19 = "tensor.concat"(%17, %18) <{dim = 0 : i64}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<2xi32>
    "check.expect_eq_const"(%19) <{value = dense<[1, 2]> : tensor<2xi32>}> : (tensor<2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concat_i64_static_dim0"}> ({
    %10 = "arith.constant"() <{value = dense<1> : tensor<1xi64>}> : () -> tensor<1xi64>
    %11 = "arith.constant"() <{value = dense<2> : tensor<1xi64>}> : () -> tensor<1xi64>
    %12 = "util.optimization_barrier"(%10) : (tensor<1xi64>) -> tensor<1xi64>
    %13 = "util.optimization_barrier"(%11) : (tensor<1xi64>) -> tensor<1xi64>
    %14 = "tensor.concat"(%12, %13) <{dim = 0 : i64}> : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    "check.expect_eq_const"(%14) <{value = dense<[1, 2]> : tensor<2xi64>}> : (tensor<2xi64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concat_f32_static_dim0"}> ({
    %5 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %6 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %7 = "util.optimization_barrier"(%5) : (tensor<1xf32>) -> tensor<1xf32>
    %8 = "util.optimization_barrier"(%6) : (tensor<1xf32>) -> tensor<1xf32>
    %9 = "tensor.concat"(%7, %8) <{dim = 0 : i64}> : (tensor<1xf32>, tensor<1xf32>) -> tensor<2xf32>
    "check.expect_almost_eq_const"(%9) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 2.000000e+00]> : tensor<2xf32>}> : (tensor<2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concat_i32_dim1"}> ({
    %0 = "arith.constant"() <{value = dense<[[1, 2, 3], [-1, -2, -3]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "arith.constant"() <{value = dense<[[4, 5, 6, 7, 8], [-4, -5, -6, -7, -8]]> : tensor<2x5xi32>}> : () -> tensor<2x5xi32>
    %2 = "util.optimization_barrier"(%0) : (tensor<2x3xi32>) -> tensor<2x3xi32>
    %3 = "util.optimization_barrier"(%1) : (tensor<2x5xi32>) -> tensor<2x5xi32>
    %4 = "tensor.concat"(%2, %3) <{dim = 1 : i64}> : (tensor<2x3xi32>, tensor<2x5xi32>) -> tensor<2x8xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[1, 2, 3, 4, 5, 6, 7, 8], [-1, -2, -3, -4, -5, -6, -7, -8]]> : tensor<2x8xi32>}> : (tensor<2x8xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

