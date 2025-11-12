"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_combination"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlagsAttr}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      %1 = "arith.cmpi"("ge", %0, %arg0) <{predicate = "ge"}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
      %2 = "scf.if"(%1) ({
        ^bb1:
          %3 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith_overflowFlagsAttr}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
          "scf.yield"(%3) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()