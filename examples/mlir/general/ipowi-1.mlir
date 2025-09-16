"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> (), sym_name = "ipowi"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "math.ipowi"(%arg0, %arg1) : (i64, i64) -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

