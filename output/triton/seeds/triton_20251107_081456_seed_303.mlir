"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg0) : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %arg1) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "arith.select"(%5, %arg1, %6) : (i1, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()