"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 17 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %2) : (i32, i32) -> i32
    %5 = "arith.remsi"(%3, %2) : (i32, i32) -> i32
    %6 = "arith.subi"(%3, %4) : (i32, i32) -> i32
    %7 = "arith.addi"(%4, %5) : (i32, i32) -> i32
    %8 = "arith.xori"(%6, %7) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()