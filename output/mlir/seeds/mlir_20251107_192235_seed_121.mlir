"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_spirv_flow"}> ({
  ^bb0:
    %0 = "spirv.func"() <{function_type = () -> i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %5 = "arith.muli"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "arith.divsi"(%5, %6) : (i32, i32) -> i32
    %8 = "spirv.ReturnValue"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()