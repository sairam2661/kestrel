"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.select"(%arg0, %arg1, %0) : (i32, i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.xori"(%5, %0) : (i32, i32) -> i32
    %7 = "arith.subi"(%6, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()