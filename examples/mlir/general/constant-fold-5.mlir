"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xf32>, sym_name = "addf_dense_and_splat_tensors"}> ({
    %0 = "arith.constant"() <{value = dense<[1.500000e+00, 2.500000e+00, 3.500000e+00, 4.500000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "arith.constant"() <{value = dense<1.500000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "arith.addf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%2) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

