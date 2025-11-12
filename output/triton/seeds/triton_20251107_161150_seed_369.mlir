"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "cross_dialect_test"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.muli"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%1, %2, "eq") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%6) : (tensor<64xi32>) -> ()
    }, {
      %7 = "arith.subi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%7) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi1>) -> tensor<64xi32>
    "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()