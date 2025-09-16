"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "no_vector_type"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.cos"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

