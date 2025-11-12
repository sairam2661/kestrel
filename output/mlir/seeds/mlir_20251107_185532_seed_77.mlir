"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.extsi"(%arg0) : (i32) -> i64
    %2 = "arith.addi"(%1, %arg1) : (i64, i64) -> i64
    %3 = "arith.subi"(%arg0, %0) : (i32, i32) -> i32
    %4 = "arith.muli"(%1, %arg1) : (i64, i64) -> i64
    "func.return"(%3, %4) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()