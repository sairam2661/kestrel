"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>), sym_name = "divi_signed_splat_tensor"}> ({
    %0 = "arith.constant"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.constant"() <{value = dense<6> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "arith.divsi"(%1, %2) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.constant"() <{value = dense<-2> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "arith.divsi"(%1, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.divsi"(%1, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%3, %5, %6) : (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

