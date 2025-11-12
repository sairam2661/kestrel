"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i1), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %arg0) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.xori"(%5, %1) : (i32, i32) -> i32
    %8 = "arith.select"(%6, %7, %arg1) : (i1, i32, i32) -> i32
    "tt.return"(%8, %6) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()