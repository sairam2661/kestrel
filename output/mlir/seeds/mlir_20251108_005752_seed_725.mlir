"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "unusual_arith_combinations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "tosa.const"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.cmpi"(%0, %1, "sge") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %3 = "scf.if"(%2) ({
    ^bb1(%arg2: tensor<4xi1>):
      %4 = "arith.addi"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%4) : (tensor<4xi32>) -> tensor<4xi32>
    }) : (tensor<4xi32>) -> tensor<4xi32>
    %5 = "scf.if"(%2) ({
    ^bb2(%arg3: tensor<4xi1>):
      %6 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%6) : (tensor<4xi32>) -> tensor<4xi32>
    }) : (tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()