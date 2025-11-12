"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "scf.if"(%6) ({
      "scf.yield"(%4) : (i32) -> ()
    }, {
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%7) : (i32) -> i32
  }) : () -> i32
}) : () -> ()