"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "test_negf"}> ({
    %2 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %3 = "arith.negf"(%2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> f32, sym_name = "test_negf1"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "arith.negf"(%0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

