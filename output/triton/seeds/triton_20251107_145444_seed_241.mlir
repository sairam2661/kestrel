"builtin.module"() ({
  "tt.func"() <{function_type = (i64, i32) -> (), sym_name = "complex_loop"}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 65536 : i64}> : () -> i64
    %2 = "tt.make_range"(%arg0, %1, %0) <{step = 1 : i64}> : (i64, i64, i32) -> !ttgMakeRangeResult
    "scf.for"(%arg0, %1, %0) ({
    ^bb1(%arg2: i64):
      %3 = "arith.divsi"(%arg2, %0) <{overflowFlags = #arith_overflowSignedDiv}> : (i64, i32) -> i64
      %4 = "arith.addi"(%arg2, %3) <{overflowFlags = #arith_overflowSigned}> : (i64, i64) -> i64
      %5 = "arith.xori"(%arg2, %4) : (i64, i64) -> i64
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 4 : i32} : (i64, i64, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()