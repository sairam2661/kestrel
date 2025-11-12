"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> (tensor<2x3xi32>), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %1 = "arith.cmpi"("eq", %0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
      %2 = "scf.if"(%1) <{resultTypes = tensor<2x3xi32>}> ({
        ^bb1(%ifCond: tensor<2x3xi1>):
          %3 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
          "scf.yield"(%3) : (tensor<2x3xi32>) -> tensor<2x3xi32>
      }) : (tensor<2x3xi32>)
      "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()