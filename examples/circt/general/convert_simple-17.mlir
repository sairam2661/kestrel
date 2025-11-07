"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> f32, sym_name = "main"}> ({
  ^bb0(%arg0: i64):
    %0 = "arith.sitofp"(%arg0) : (i64) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

