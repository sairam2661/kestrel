"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, i32), sym_name = "mixed_types_and_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
      "scf.if"(%1) ({}, {}, {^bb1(%arg0: i32, %arg1: i64): "scf.yield"() : () -> ()}, {^bb2(%arg0: i32, %arg1: i64): "scf.yield"() : () -> ()}) : (i64) -> ()
      "scf.if"(%arg0) ({}, {}, {^bb3(%arg0: i32, %arg1: i64): "scf.yield"() : () -> ()}, {^bb4(%arg0: i32, %arg1: i64): "scf.yield"() : () -> ()}) : (i32) -> ()
      "func.return"(%0, %arg0) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()