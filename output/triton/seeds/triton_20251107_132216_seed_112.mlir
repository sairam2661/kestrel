"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 16 : i32}, {}], function_type = (i32, tensor<128xi32>, tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_reductions"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>, %arg2: tensor<128xi32>, %arg3: tensor<128xi32>, %arg4: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_mode}  > : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2:2 = "tt.reduce"(%1) ({
      ^bb1(%arg5: tensor<128xi32>, %arg6: i32):
        %3 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflow_mode}> : (tensor<128xi32>, i32) -> tensor<128xi32>
        "scf.yield"(%3) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> (tensor<128xi32>)
    %4 = "arith.mulvi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_mode}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%2#0, %4) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32, "ttg.target" = "cuda:100"} : () -> ()