"builtin.module"() ({
  "func.func"() <{function_type = (i8, i64) -> i32, sym_name = "mixed_int_types"}> ({
  ^bb0(%arg0: i8, %arg1: i64):
    %0 = "tosa.const"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.extui"(%arg0) : (i8) -> i32
    %2 = "arith.extsi"(%arg1) : (i64) -> i64
    %3 = "arith.addi"(%1, %2) : (i32, i64) -> i64
    %4 = "arith.trunci"(%3) : (i64) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()