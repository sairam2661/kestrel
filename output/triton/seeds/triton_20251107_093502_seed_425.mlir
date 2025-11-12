"builtin.module"() ({
  "tt.func"() <{function_type = () -> (i32, i32), sym_name = "fuzz_example"}> ({
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %2 = "arith.xori"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.select"(%2, %0, %1) <{predicate = 1 : i64}> : (i32, i32, i32) -> i32
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %5 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %8 = "arith.remsi"(%6, %1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    "tt.return"(%7, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()