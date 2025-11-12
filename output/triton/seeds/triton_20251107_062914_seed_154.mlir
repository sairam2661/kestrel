"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_compute"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %0) : (i1, i32, i32) -> i32
    %5 = "arith.divsi"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.subi"(%arg0, %5) : (i32, i32) -> i32
    %7 = "arith.xori"(%arg1, %6) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> i32
}) : () -> ()