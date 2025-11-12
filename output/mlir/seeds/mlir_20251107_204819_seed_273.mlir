"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32) -> (f32, i32), sym_name = "mixed_dialects_with_complex_control_flow"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "scf.if"(%arg2) ({
      %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%0, %1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()