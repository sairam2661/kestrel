"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "bitcastPoisonItoFP"}> ({
    %0 = "ub.poison"() <{value = #ub.poison}> : () -> i32
    %1 = "arith.bitcast"(%0) : (i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

