"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>, sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: tensor<4x8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<4x8xi32>}> : () -> tensor<4x8xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}>() : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    %2 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflow_flags}>() : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflow_flags}>() : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflow_flags}>() : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    %5 = "arith.xori"(%arg0, %arg1) : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    %6 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi1>
    %7 = "arith.select"(%6, %5, %4) : (tensor<4x8xi1>, tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>
    "tt.return"(%7) : (tensor<4x8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()