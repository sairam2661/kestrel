"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "torch_index_select1"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<[[[100, 101], [110, 111]], [[200, 201], [210, 211]]]> : tensor<2x2x2xi32>}> : () -> tensor<?x?x?xi32>
    %1 = "flow.tensor.dynamic_constant"() <{value = dense<[[[0, 1], [1, 0]], [[0, 0], [1, 1]]]> : tensor<2x2x2xi32>}> : () -> tensor<?x?x?xi32>
    %2 = "stablehlo.torch_index_select"(%0, %1) <{batch_dims = -1 : i64, dim = -1 : i64}> : (tensor<?x?x?xi32>, tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    %3 = "util.optimization_barrier"(%2) : (tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    %4 = "tensor.cast"(%3) : (tensor<?x?x?xi32>) -> tensor<2x2x2xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[[100, 101], [111, 110]], [[200, 200], [211, 211]]]> : tensor<2x2x2xi32>}> : (tensor<2x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

