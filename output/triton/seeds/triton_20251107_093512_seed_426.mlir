"builtin.module"() ({
  "tt.func"() <{function_type = () -> (i32, i32), sym_name = "complicated_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 255 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 50 : i32}> : () -> i32
    %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.divsi"(%5, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %7 = "arith.remsi"(%5, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %8 = "arith.xori"(%6, %7) : (i32, i32) -> i32
    %9 = "arith.cmpi"(%8, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %10 = "arith.select"(%9, %0, %1) : (i1, i32, i32) -> i32
    "tt.return"(%10, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()