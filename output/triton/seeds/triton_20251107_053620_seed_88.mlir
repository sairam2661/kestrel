"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %1) : (i32, i32) -> i32
    %6 = "arith.muli"(%5, %2) : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %3) : (i32, i32) -> i32
    %8 = "arith.remsi"(%5, %3) : (i32, i32) -> i32
    %9 = "arith.cmpi"(%7, %8) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %10 = "arith.select"(%9, %6, %7) : (i1, i32, i32) -> i32
    %11 = "arith.xori"(%10, %3) : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()