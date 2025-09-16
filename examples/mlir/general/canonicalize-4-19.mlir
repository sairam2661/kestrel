"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "bitcastPoisonFPtoI"}> ({
    %0 = "ub.poison"() <{value = #ub.poison}> : () -> f32
    %1 = "arith.bitcast"(%0) : (f32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

