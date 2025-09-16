"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "test_with_multiple_block_arg_uses"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 45 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 46 : i32}> : () -> i32
    %2 = "test.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "test.addi"(%2, %arg0) : (i32, i32) -> i32
    %4 = "test.addi"(%2, %1) : (i32, i32) -> i32
    %5 = "test.addi"(%2, %2) : (i32, i32) -> i32
    %6 = "test.addi"(%3, %4) : (i32, i32) -> i32
    %7 = "test.addi"(%6, %5) : (i32, i32) -> i32
    %8 = "test.addi"(%7, %4) : (i32, i32) -> i32
    %9 = "test.addi"(%8, %4) : (i32, i32) -> i32
    "func.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

