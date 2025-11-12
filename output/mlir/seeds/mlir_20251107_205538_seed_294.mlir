"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "combined_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.extsi"(%0) : (i32) -> i64
    %2 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %3 = "arith.trunci"(%2) : (i64) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()