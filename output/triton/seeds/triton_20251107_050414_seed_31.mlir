"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> i64
    %1 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> i64
    %2 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> i64
    %3 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> i64
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowed}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%4) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()