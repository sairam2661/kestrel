"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_scratch_alloc"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> memref<2048xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> memref<4096xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> memref<8192xi32>
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7:2 = "scf.for"(%5, %6, %4, %0, %1) ({
    ^bb0(%i: i32, %j: i32, %a: memref<1024xi32>, %b: memref<2048xi32>):
      %8 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %9 = "arith.addi"(%i, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %10 = "arith.addi"(%j, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%9, %10, %a, %b) : (i32, i32, memref<1024xi32>, memref<2048xi32>) -> ()
    }) : (i32, i32, memref<1024xi32>, memref<2048xi32>) -> (i32, i32, memref<1024xi32>, memref<2048xi32>)
    "tt.return"(%7#0, %7#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()