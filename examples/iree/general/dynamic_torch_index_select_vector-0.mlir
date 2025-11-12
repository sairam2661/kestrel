"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select1"}> ({
    %5 = "flow.tensor.dynamic_constant"() <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]]> : tensor<3x2x2xi32>}> : () -> tensor<?x?x?xi32>
    %6 = "flow.tensor.dynamic_constant"() <{value = dense<[0, 1]> : tensor<2xi32>}> : () -> tensor<?xi32>
    %7 = "stablehlo.torch_index_select"(%5, %6) <{batch_dims = 0 : i64, dim = 1 : i64}> : (tensor<?x?x?xi32>, tensor<?xi32>) -> tensor<?x?x?xi32>
    %8 = "util.optimization_barrier"(%7) : (tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    %9 = "tensor.cast"(%8) : (tensor<?x?x?xi32>) -> tensor<3x2x2xi32>
    "check.expect_eq_const"(%9) <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]]> : tensor<3x2x2xi32>}> : (tensor<3x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select2"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]]> : tensor<3x2x2xi32>}> : () -> tensor<?x?x?xi32>
    %1 = "flow.tensor.dynamic_constant"() <{value = dense<[0, 1]> : tensor<2xi32>}> : () -> tensor<?xi32>
    %2 = "stablehlo.torch_index_select"(%0, %1) <{batch_dims = 0 : i64, dim = 0 : i64}> : (tensor<?x?x?xi32>, tensor<?xi32>) -> tensor<?x?x?xi32>
    %3 = "util.optimization_barrier"(%2) : (tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    %4 = "tensor.cast"(%3) : (tensor<?x?x?xi32>) -> tensor<2x2x2xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]]]> : tensor<2x2x2xi32>}> : (tensor<2x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

