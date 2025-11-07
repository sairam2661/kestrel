"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xf32>) -> tensor<10xf32>, sym_name = "test_maximumf_domain"}> ({
  ^bb0(%arg0: tensor<10xf32>):
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %1 = "arith.maximumf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> {degree = 3 : i32, domain_lower = -1.000000e+00 : f64, domain_upper = 2.000000e+00 : f64} : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    "func.return"(%1) : (tensor<10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

