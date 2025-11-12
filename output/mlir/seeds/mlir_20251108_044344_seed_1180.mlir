"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "unusual_combination"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "tosa.const"() <{value = dense<42> : tensor<32x32xi32>}> : () -> tensor<32x32xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    "func.return"(%2) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()