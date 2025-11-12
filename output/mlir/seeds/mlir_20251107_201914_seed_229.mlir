"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.extsi"(%arg0) : (i32) -> i64
    %2 = "arith.mulif"(%1, %1) : (i64, i64) -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    "func.return"(%0, %1, %3) : (i32, i64, f32) -> ()
  }) : () -> ()
}) : () -> ()