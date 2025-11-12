"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_maths"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.divsi"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.cmpi"(%4, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "arith.select"(%6, %7, %8) : (i1, i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()