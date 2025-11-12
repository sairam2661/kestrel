"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "custom_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "tt.reduce"(%arg0, %0) ({
        ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
          %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%4) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "tt.addptr"(%1, %arg1, %0) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()