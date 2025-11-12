"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i64, sym_name = "mixed_add"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    %3 = "arith.addf"(%arg1, %0) : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()