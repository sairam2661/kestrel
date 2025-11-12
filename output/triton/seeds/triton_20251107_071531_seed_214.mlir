"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i32}> : () -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%2, %1) : (i32, i32) -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %0) : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()