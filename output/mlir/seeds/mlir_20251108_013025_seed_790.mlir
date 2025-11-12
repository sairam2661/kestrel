"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_add_subtract"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
    %4 = "arith.subi"(%arg1, %3) : (i32, i32) -> i32
    "func.return"(%2, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()