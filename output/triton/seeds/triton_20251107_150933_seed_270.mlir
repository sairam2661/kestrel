"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %3 = "arith.subi"(%arg0, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.xori"(%arg1, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.select"(%1, %3, %4) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()