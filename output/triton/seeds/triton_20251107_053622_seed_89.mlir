"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "arith.remsi"(%arg0, %0) : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg0, %1) : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %2) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %arg0, %0) : (i1, i32, i32) -> i32
    %8 = "arith.muli"(%7, %2) : (i32, i32) -> i32
    %9 = "arith.xori"(%8, %2) : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()