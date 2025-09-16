"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x1xi32>, sym_name = "reduce_max_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6], [7, 8, 9]]> : tensor<3x3xi32>}> : () -> tensor<3x3xi32>
    %1 = "tosa.reduce_max"(%0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<3x3xi32>) -> tensor<3x1xi32>
    "func.return"(%1) : (tensor<3x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

