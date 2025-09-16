"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "base_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 45 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 46 : i32}> : () -> i32
    %2 = "test.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "test.addi"(%2, %0) : (i32, i32) -> i32
    %4 = "test.addi"(%2, %1) : (i32, i32) -> i32
    %5 = "test.addi"(%3, %4) : (i32, i32) -> i32
    %6 = "test.addi"(%5, %4) : (i32, i32) -> i32
    %7 = "test.addi"(%6, %4) : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

