"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>, sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<128x64xi32>, %arg1: tensor<128x64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    %1 = "arith.cmpi"(%0, %arg0, "slt") <{predicate = "slt"}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi1>
    %2 = "arith.constant"() <{value = dense<1> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    %3 = "arith.select"(%1, %0, %2) : (tensor<128x64xi1>, tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    %4 = "arith.subi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x64xi32>, tensor<128x64xi32>) -> tensor<128x64xi32>
    "tt.return"(%4) : (tensor<128x64xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (tensor<128x64xi32>, tensor<128x64xi32>), sym_name = "generate_tensors", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = dense<0> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    %2 = "arith.constant"() <{value = dense<1> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    "tt.return"(%1, %2) : (tensor<128x64xi32>, tensor<128x64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()