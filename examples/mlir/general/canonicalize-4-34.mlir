"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (i1, i1, i1, i1), sym_name = "test_cmpf"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 0x7FFFFFFF : f32}> : () -> f32
    %1 = "arith.cmpf"(%0, %arg0) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %2 = "arith.cmpf"(%arg0, %0) <{fastmath = #arith.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %3 = "arith.cmpf"(%0, %arg0) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    %4 = "arith.cmpf"(%arg0, %0) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    "func.return"(%1, %2, %3, %4) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

