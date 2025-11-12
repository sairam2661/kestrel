"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 24 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %4 = "scf.if"(%2) ({
      %5 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.remsi"(%3, %1) : (i64, i64) -> i64
      "scf.yield"(%5, %6) : (i32, i64) -> ()
    }, {
      %7 = "arith.divsi"(%3, %2) : (i64, i32) -> i64
      %8 = "arith.cmpi"(%2, %0) <{predicate = "slt"}> : (i32, i32) -> i1
      "scf.yield"(%0, %7) : (i32, i64) -> ()
    }) : (i32) -> (i32, i64)
    "tt.return"(%4#0, %4#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()