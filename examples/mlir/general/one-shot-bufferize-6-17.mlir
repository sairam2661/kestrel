"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2x5xf32>, sym_name = "tensor.reshape"}> ({
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : tensor<2x10xf32>}> : () -> tensor<2x10xf32>
    %1 = "tensor.cast"(%0) : (tensor<2x10xf32>) -> tensor<?x10xf32>
    %2 = "arith.constant"() <{value = dense<[2, 2, 5]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %3 = "tensor.reshape"(%1, %2) : (tensor<?x10xf32>, tensor<3xi64>) -> tensor<2x2x5xf32>
    "func.return"(%3) : (tensor<2x2x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

