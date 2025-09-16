"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f"}> ({
    "test.graph_region"() ({
      %0 = "math.exp"(%1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %1 = "math.exp"(%0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "test.terminator"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

