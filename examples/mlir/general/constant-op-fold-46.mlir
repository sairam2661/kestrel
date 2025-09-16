"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x3x3xi32>, sym_name = "reduce_sum_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[[1, 2, 3], [4, 5, 6], [7, 8, 9]], [[10, 11, 12], [13, 14, 15], [16, 17, 18]], [[19, 20, 21], [22, 23, 24], [25, 26, 27]]]> : tensor<3x3x3xi32>}> : () -> tensor<3x3x3xi32>
    %1 = "tosa.reduce_sum"(%0) <{axis = 0 : i32}> : (tensor<3x3x3xi32>) -> tensor<1x3x3xi32>
    "func.return"(%1) : (tensor<1x3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

