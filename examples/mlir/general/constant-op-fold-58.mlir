"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x1xi32>, sym_name = "reduce_max_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "tosa.reduce_max"(%0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3xi32>) -> tensor<2x1xi32>
    "func.return"(%1) : (tensor<2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

