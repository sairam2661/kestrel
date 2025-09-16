"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: f32):
    "test.region"() ({
      %0 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

