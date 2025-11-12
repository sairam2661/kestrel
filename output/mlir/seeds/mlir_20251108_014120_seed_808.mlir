"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialect_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 3.14, type = f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %3 = "scf.if"(%0) ({
    ^bb0:
      "scf.yield"(%0, %2) : (i32, f32) -> ()
    }) : (i32, f32) -> (i32, f32)
    "func.return"(%3#0, %3#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()