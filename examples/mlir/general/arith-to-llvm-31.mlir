"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "ceildivsi"}> ({
  ^bb0(%arg1: i64, %arg2: i64):
    %1 = "arith.ceildivsi"(%arg1, %arg2) : (i64, i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "ceildivui"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.ceildivui"(%arg0, %arg0) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

