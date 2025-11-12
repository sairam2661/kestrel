"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i1) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "arith.subi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i1) -> i32
    %7 = "arith.select"(%arg1, %4, %0) : (i1, i32, i32) -> i32
    %8 = "arith.remsi"(%7, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()