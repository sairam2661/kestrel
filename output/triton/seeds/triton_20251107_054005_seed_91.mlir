"builtin.module"() ({
  "tt.func"() <{function_type = (!ttggpu_ptrtensor64x64xf16, i32) -> (!ttggpu_ptrtensor64x64xf16), sym_name = "stress_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: !ttggpu_ptrtensor64x64xf16, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%2) ({
      %3 = "tt.expand_dims"(%arg0) <{dim = 0 : i32}> : (!ttggpu_ptrtensor64x64xf16) -> !ttggpu_ptrtensor1x64x64xf16
      %4 = "tt.addptr"(%3, %1) : (!ttggpu_ptrtensor1x64x64xf16, i32) -> !ttggpu_ptrtensor1x64x64xf16
      %5 = "tt.reduce"(%4) ({
      ^bb1(%arg6: !ttggpu_ptrtensor1x64x64xf16):
        %7 = "arith.addi"(%arg6, %arg6) <{overflowFlags = #arith_overflownone}> : (!ttggpu_ptrtensor1x64x64xf16, !ttggpu_ptrtensor1x64x64xf16) -> !ttggpu_ptrtensor1x64x64xf16
        "scf.yield"(%7) : (!ttggpu_ptrtensor1x64x64xf16) -> ()
      }) : (!ttggpu_ptrtensor1x64x64xf16) -> !ttggpu_ptrtensor64x64xf16
      "tt.return"(%5) : (!ttggpu_ptrtensor64x64xf16) -> ()
    }, {
    }) : (i1) -> ()
    "tt.return"(%arg0) : (!ttggpu_ptrtensor64x64xf16) -> ()
  }) : () -> ()
}) : () -> ()