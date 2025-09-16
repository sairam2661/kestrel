"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> (f16, f16, f16), sym_name = "test_subf"}> ({
  ^bb0(%arg0: f16):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %2 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %3 = "arith.subf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %4 = "arith.subf"(%arg0, %1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %5 = "arith.subf"(%0, %2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    "func.return"(%3, %4, %5) : (f16, f16, f16) -> ()
  }) : () -> ()
}) : () -> ()

