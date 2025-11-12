"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "mix_test"}> ({
    ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi1>
      %1 = "tosa.const"() <{values = dense<1> : tensor<3xi32>}> : () -> tensor<3xi32>
      %2 = "tosa.const"() <{values = dense<0> : tensor<3xi32>}> : () -> tensor<3xi32>
      %3 = "arith.addi"(%arg0, %2) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
      %4 = "arith.addi"(%arg1, %1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
      %5 = "scf.if"(%0) ({
        ^bb1(%arg2: tensor<3xi1>):
          %6 = "arith.addi"(%3, %4) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
          "scf.yield"(%6) : (tensor<3xi32>) -> tensor<3xi32>
      }) : (tensor<3xi1>) -> tensor<3xi32>
      "func.return"(%5) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()