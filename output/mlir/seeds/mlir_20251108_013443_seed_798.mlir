"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "complex_nested_ops"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.cmpi"(%0, %arg0) {"predicate" = "eq"} : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %2 = "arith.select"(%1, %0, %arg0) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %3 = "scf.if"(%1) ({
    ^bb1(%arg2: tensor<2x3xi1>):
      %4 = "arith.addi"(%2, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      "scf.yield"(%4) : (tensor<2x3xi32>) -> ()
    }, {
    ^bb2(%arg3: tensor<2x3xi1>):
      %5 = "arith.subi"(%2, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      "scf.yield"(%5) : (tensor<2x3xi32>) -> ()
    }) : (tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%3) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()