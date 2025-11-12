"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.addf"(%1, %1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()