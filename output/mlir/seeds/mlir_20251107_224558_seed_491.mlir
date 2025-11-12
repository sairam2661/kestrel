"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> i1, sym_name = "uncommon_cmpf_combinations"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = 1 : i64}> : (f32, f32) -> i1
    %2 = "arith.cmpf"(%0, %arg1) <{predicate = 0 : i64}> : (f32, f32) -> i1
    %3 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()