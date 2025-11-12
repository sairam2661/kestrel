"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 512 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg0, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %4 = "arith.select"(%2, %arg0, %3) : (i1, i32, i32) -> i32
    %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.xori"(%7, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.muli"(%8, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()