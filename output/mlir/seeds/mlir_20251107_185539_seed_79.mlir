"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi64>) -> tensor<2x2xi64>, sym_name = "mixed_type_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi64>):
    %0 = "tosa.const"() <{value = dense<10> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.extsi"(%1) : (tensor<2x2xi32>) -> tensor<2x2xi64>
    %3 = "arith.addi"(%arg1, %2) : (tensor<2x2xi64>, tensor<2x2xi64>) -> tensor<2x2xi64>
    "func.return"(%3) : (tensor<2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()