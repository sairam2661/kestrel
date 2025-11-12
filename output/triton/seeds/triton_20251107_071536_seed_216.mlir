"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 123456789 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -987654321 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.mul"(%3, %2) : (i32, i32) -> i32
    %5 = "arith.subi"(%0, %1) : (i32, i32) -> i32
    %6 = "arith.remsi"(%4, %2) : (i32, i32) -> i32
    %7 = "arith.xori"(%5, %6) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()