"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i1, sym_name = "main"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 4.200000e+00 : f32}> : () -> f32
    %1 = "arith.cmpf"(%arg0, %0) <{fastmath = #arith.fastmath<none>, predicate = 7 : i64}> : (f32, f32) -> i1
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

