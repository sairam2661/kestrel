"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.extsi"(%arg0) : (i32) -> i64
    %1 = "arith.addi"(%0, %arg1) : (i64, i64) -> i64
    %2 = "arith.trunci"(%1) : (i64) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()