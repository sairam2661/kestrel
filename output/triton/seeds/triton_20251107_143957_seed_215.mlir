"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64x64xi32>, tensor<64x64xi32>) -> (), sym_name = "complex_loop"}> ({
  ^bb0(%arg0: tensor<64x64xi32>, %arg1: tensor<64x64xi32>):
    %0 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %3:2 = "scf.for"(%1, %0, %2, %arg0, %arg1) ({
    ^bb1(%arg2: i32, %arg3: tensor<64x64xi32>, %arg4: tensor<64x64xi32>):
      %4 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %5:2 = "scf.for"(%1, %0, %2, %arg3, %arg4) ({
      ^bb2(%arg5: i32, %arg6: tensor<64x64xi32>, %arg7: tensor<64x64xi32>):
        %6 = "arith.addi"(%arg5, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
        %7 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith_overflow_flags}> : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
        "scf.yield"(%arg7, %arg6) : (tensor<64x64xi32>, tensor<64x64xi32>) -> ()
      }) : (i32, i32, tensor<64x64xi32>, tensor<64x64xi32>) -> (tensor<64x64xi32>, tensor<64x64xi32>)
      "scf.yield"(%arg4, %arg3) : (tensor<64x64xi32>, tensor<64x64xi32>) -> ()
    }) : (i32, i32, tensor<64x64xi32>, tensor<64x64xi32>) -> (tensor<64x64xi32>, tensor<64x64xi32>)
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()