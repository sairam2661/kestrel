"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %1 = "arith.remsi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.divsi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.constant"() <{value = dense<42> : tensor<32xi32>}> : () -> tensor<32xi32>
      %4 = "arith.select"(%1, %2, %3) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()