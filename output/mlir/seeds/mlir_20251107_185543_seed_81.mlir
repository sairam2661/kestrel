"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi32>) -> tensor<8xi64>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi32>):
    %0 = "tosa.const"() <{value = dense<42> : tensor<4xi8>}> : () -> tensor<4xi8>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %2 = "tosa.const"() <{value = dense<100> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "arith.addi"(%arg1, %2) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.extsi"(%1) : (tensor<4xi8>) -> tensor<4xi32>
    %5 = "arith.xori"(%3, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.extsi"(%5) : (tensor<4xi32>) -> tensor<4xi64>
    "func.return"(%6) : (tensor<8xi64>) -> ()
  }) : () -> ()
}) : () -> ()