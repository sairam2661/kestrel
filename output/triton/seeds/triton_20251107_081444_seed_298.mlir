"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_math"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %1) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %7 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %8 = "arith.select"(%6, %7, %arg1) : (i1, i32, i32) -> i32
    "tt.return"(%5, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()