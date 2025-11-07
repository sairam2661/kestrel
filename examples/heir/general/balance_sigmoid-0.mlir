"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<1x16xf32>>) -> !secret.secret<tensor<1x16xf32>>, sym_name = "three_degree_sigmoid"}> ({
  ^bb0(%arg0: !secret.secret<tensor<1x16xf32>>):
    %0 = "arith.constant"() <{value = dense<-4.000000e-03> : tensor<1x16xf32>}> : () -> tensor<1x16xf32>
    %1 = "arith.constant"() <{value = dense<1.970000e-01> : tensor<1x16xf32>}> : () -> tensor<1x16xf32>
    %2 = "arith.constant"() <{value = dense<5.000000e-01> : tensor<1x16xf32>}> : () -> tensor<1x16xf32>
    %3 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<1x16xf32>):
      %4 = "arith.mulf"(%arg1, %1) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      %5 = "arith.mulf"(%arg1, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      %6 = "arith.mulf"(%5, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      %7 = "arith.mulf"(%6, %0) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      %8 = "arith.addf"(%4, %2) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      %9 = "arith.addf"(%8, %7) <{fastmath = #arith.fastmath<none>}> : (tensor<1x16xf32>, tensor<1x16xf32>) -> tensor<1x16xf32>
      "secret.yield"(%9) : (tensor<1x16xf32>) -> ()
    }) : (!secret.secret<tensor<1x16xf32>>) -> !secret.secret<tensor<1x16xf32>>
    "func.return"(%3) : (!secret.secret<tensor<1x16xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

