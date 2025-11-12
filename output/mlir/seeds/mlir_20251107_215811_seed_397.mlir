"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i8, i32), sym_name = "mixed_types_test"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "tosa.const"() <{value = 42 : i8}> : () -> i8
    %1 = "tosa.const"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i8, i8) -> i8
    %3 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
    "func.return"(%2, %3) : (i8, i32) -> ()
  }) : () -> ()
}) : () -> ()