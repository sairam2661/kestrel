"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, f32, i32) -> f32
    %2 = "arith.addf"(%arg0, %1) <{fastmath = #arithfastmathnone}> : (f32, f32) -> f32
    %3 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%2, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()