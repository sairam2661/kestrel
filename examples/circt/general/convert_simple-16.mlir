"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i64, sym_name = "main"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.fptosi"(%arg0) : (f32) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

