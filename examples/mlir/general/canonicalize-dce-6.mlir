"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "f"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

