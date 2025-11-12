"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select1"}> ({
    %5 = "flow.tensor.dynamic_constant"() <{value = dense<[[[1, 2, 3, 4, 5]], [[6, 7, 8, 9, 10]], [[11, 12, 13, 14, 15]], [[16, 17, 18, 19, 20]], [[21, 22, 23, 24, 25]]]> : tensor<5x1x5xi32>}> : () -> tensor<?x?x?xi32>
    %6 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %7 = "stablehlo.torch_index_select"(%5, %6) <{batch_dims = 0 : i64, dim = 0 : i64}> : (tensor<?x?x?xi32>, tensor<i32>) -> tensor<?x?xi32>
    %8 = "util.optimization_barrier"(%7) : (tensor<?x?xi32>) -> tensor<?x?xi32>
    %9 = "tensor.cast"(%8) : (tensor<?x?xi32>) -> tensor<1x5xi32>
    "check.expect_eq_const"(%9) <{value = dense<[[1, 2, 3, 4, 5]]> : tensor<1x5xi32>}> : (tensor<1x5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select2"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<[[[1, 2, 3, 4, 5]], [[6, 7, 8, 9, 10]], [[11, 12, 13, 14, 15]], [[16, 17, 18, 19, 20]], [[21, 22, 23, 24, 25]]]> : tensor<5x1x5xi32>}> : () -> tensor<?x?x?xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %2 = "stablehlo.torch_index_select"(%0, %1) <{batch_dims = 0 : i64, dim = 1 : i64}> : (tensor<?x?x?xi32>, tensor<i32>) -> tensor<?x?xi32>
    %3 = "util.optimization_barrier"(%2) : (tensor<?x?xi32>) -> tensor<?x?xi32>
    %4 = "tensor.cast"(%3) : (tensor<?x?xi32>) -> tensor<5x5xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]> : tensor<5x5xi32>}> : (tensor<5x5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

