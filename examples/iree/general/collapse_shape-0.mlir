"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "collapse_shape_i32"}> ({
    %3 = "arith.constant"() <{value = dense<[[1, 2, 3, 4]]> : tensor<1x4xi32>}> : () -> tensor<1x4xi32>
    %4 = "util.optimization_barrier"(%3) : (tensor<1x4xi32>) -> tensor<1x4xi32>
    %5 = "tensor.collapse_shape"(%4) <{reassociation = [[0, 1]]}> : (tensor<1x4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%5) <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "collapse_shape_i64"}> ({
    %0 = "arith.constant"() <{value = dense<[[1, 2, 3, 4]]> : tensor<1x4xi64>}> : () -> tensor<1x4xi64>
    %1 = "util.optimization_barrier"(%0) : (tensor<1x4xi64>) -> tensor<1x4xi64>
    %2 = "tensor.collapse_shape"(%1) <{reassociation = [[0, 1]]}> : (tensor<1x4xi64>) -> tensor<4xi64>
    "check.expect_eq_const"(%2) <{value = dense<[1, 2, 3, 4]> : tensor<4xi64>}> : (tensor<4xi64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

