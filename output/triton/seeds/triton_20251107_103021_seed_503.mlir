"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_mix", sym_visibility = "internal"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.mulii"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.remsi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.divsi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.addi"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.mulii"(%2, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.addi"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()