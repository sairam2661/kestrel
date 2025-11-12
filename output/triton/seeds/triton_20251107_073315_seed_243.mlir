"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %5 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %8 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %9 = "arith.muli"(%7, %8) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %10 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    "tt.return"(%10) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()