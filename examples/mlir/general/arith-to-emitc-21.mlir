"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> i1, sym_name = "arith_cmpf_ueq"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

