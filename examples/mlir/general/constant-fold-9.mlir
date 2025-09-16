"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_and"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<-1> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "arith.constant"() <{value = dense<31> : tensor<2xi32>}> : () -> tensor<2xi32>
    %2 = "arith.constant"() <{value = dense<[31, -1]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = "arith.andi"(%arg0, %0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "arith.andi"(%3, %1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %5 = "arith.andi"(%4, %2) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

