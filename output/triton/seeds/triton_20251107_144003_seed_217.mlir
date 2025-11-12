"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<128x64xi32>, %arg1: tensor<128x64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    "tt.return"(%0) : (tensor<128x64xi32>) -> ()
  }) : (tensor<128x64xi32>, tensor<128x64xi32>) -> (tensor<128x64xi32>)
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()