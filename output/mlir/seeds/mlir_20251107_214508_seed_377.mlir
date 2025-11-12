"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_arith_test"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "scf.if"(%0) ({
      ^bb1(%c0: tensor<4xi1>):
        %3 = "arith.addi"(%1, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%3) : (tensor<4xi32>) -> tensor<4xi32>
    }, {
      ^bb2(%c0: tensor<4xi1>):
        %4 = "arith.subi"(%1, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%4) : (tensor<4xi32>) -> tensor<4xi32>
    }) : (tensor<4xi1>) -> tensor<4xi32>
    "func.return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()