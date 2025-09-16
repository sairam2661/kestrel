"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "arith_extui"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.extui"(%arg0) : (i32) -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

