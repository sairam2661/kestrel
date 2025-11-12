"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.remsi"(%0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.xori"(%0, %1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %4 = "arith.select"(%2, %0, %3) : (tensor<16x16xi32>, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %5 = "tt.expand_dims"(%4, 0) : (tensor<16x16xi32>) -> tensor<1x16x16xi32>
    %6 = "tt.reduce"(%5) ({
    ^bb0(%arg2: tensor<16x16xi32>):
      %7 = "arith.addi"(%arg2, %arg2) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      "scf.yield"(%7) : (tensor<16x16xi32>) -> ()
    }) : (tensor<16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%6) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()