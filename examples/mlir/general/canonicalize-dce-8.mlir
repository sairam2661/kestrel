"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.exp"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "foo.has_region"() ({
      %1 = "math.exp"(%0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "foo.return"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

