"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select1"}> ({
    %5 = "flow.tensor.dynamic_constant"() <{value = dense<[[6, 7], [8, 9]]> : tensor<2x2xi32>}> : () -> tensor<?x?xi32>
    %6 = "flow.tensor.dynamic_constant"() <{value = dense<[[[[0, 1], [1, 0]], [[0, 0], [1, 1]]], [[[1, 1], [0, 0]], [[0, 1], [1, 0]]]]> : tensor<2x2x2x2xi32>}> : () -> tensor<?x?x?x?xi32>
    %7 = "stablehlo.torch_index_select"(%5, %6) <{batch_dims = 1 : i64, dim = 1 : i64}> : (tensor<?x?xi32>, tensor<?x?x?x?xi32>) -> tensor<?x?x?x?xi32>
    %8 = "util.optimization_barrier"(%7) : (tensor<?x?x?x?xi32>) -> tensor<?x?x?x?xi32>
    %9 = "tensor.cast"(%8) : (tensor<?x?x?x?xi32>) -> tensor<2x2x2x2xi32>
    "check.expect_eq_const"(%9) <{value = dense<[[[[6, 7], [7, 6]], [[6, 6], [7, 7]]], [[[9, 9], [8, 8]], [[8, 9], [9, 8]]]]> : tensor<2x2x2x2xi32>}> : (tensor<2x2x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select2"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<[[6, 7], [8, 9]]> : tensor<2x2xi32>}> : () -> tensor<?x?xi32>
    %1 = "flow.tensor.dynamic_constant"() <{value = dense<[[[[0, 1], [1, 0]], [[0, 0], [1, 1]]], [[[1, 1], [0, 0]], [[0, 1], [1, 0]]]]> : tensor<2x2x2x2xi32>}> : () -> tensor<?x?x?x?xi32>
    %2 = "stablehlo.torch_index_select"(%0, %1) <{batch_dims = 0 : i64, dim = 0 : i64}> : (tensor<?x?xi32>, tensor<?x?x?x?xi32>) -> tensor<?x?x?x?x?xi32>
    %3 = "util.optimization_barrier"(%2) : (tensor<?x?x?x?x?xi32>) -> tensor<?x?x?x?x?xi32>
    %4 = "tensor.cast"(%3) : (tensor<?x?x?x?x?xi32>) -> tensor<2x2x2x2x2xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[[[[6, 7], [8, 9]], [[8, 9], [6, 7]]], [[[6, 7], [6, 7]], [[8, 9], [8, 9]]]], [[[[8, 9], [8, 9]], [[6, 7], [6, 7]]], [[[6, 7], [8, 9]], [[8, 9], [6, 7]]]]]> : tensor<2x2x2x2x2xi32>}> : (tensor<2x2x2x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

