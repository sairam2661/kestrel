"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgglobal_ptr), sym_name = "mixed_operations", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttgglobal_ptr
    %1 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.cmpi"(%2, %2) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
    ^bb0:
      %5 = "arith.addi"(%2, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }, {
    ^bb1:
      %6 = "arith.subi"(%2, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %7 = "tt.reduce"(%1) ({
    ^bb0(%arg0: tensor<256xi32>, %arg1: i32):
      %8 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (tensor<256xi32>, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (tensor<256xi32>) -> i32
    "tt.return"(%0, %7) : (!ttgglobal_ptr, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()