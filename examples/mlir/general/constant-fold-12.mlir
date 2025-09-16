"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "simple_subf"}> ({
    %0 = "arith.constant"() <{value = 4.500000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.500000e+00 : f32}> : () -> f32
    %2 = "arith.subf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

