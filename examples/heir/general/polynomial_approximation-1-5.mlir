"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xf32>) -> tensor<10xf32>, sym_name = "test_maximumf_ignore_not_splat"}> ({
  ^bb0(%arg0: tensor<10xf32>):
    %0 = "arith.constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00, 1.000000e+01]> : tensor<10xf32>}> : () -> tensor<10xf32>
    %1 = "arith.maximumf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    "func.return"(%1) : (tensor<10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

