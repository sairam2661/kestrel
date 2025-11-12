"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>, sym_name = "tensor_xor_add_divide", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<128x64xi32>, %arg1: tensor<128x64xi32>):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    %3 = "arith.xori"(%arg0, %arg1) : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    %4 = "arith.divsi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    "tt.return"(%4) : (tensor<128x64xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<128x64xi32>, sym_name = "constant_tensor", sym_visibility = "public"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<123> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    "tt.return"(%0) : (tensor<128x64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()