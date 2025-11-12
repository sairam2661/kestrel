"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "arithmetic_i64"}> ({
  ^bb0(%arg0: i64):
    %0 = "math.ctlz"(%arg0) : (i64) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

