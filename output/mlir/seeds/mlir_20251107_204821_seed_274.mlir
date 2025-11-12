"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32) -> (f32, i32), sym_name = "mixed_op_sequence"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "scf.if"(%arg2) ({
      %3 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
      "scf.yield"(%3) : (f32) -> ()
    }, {
      %4 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
      "scf.yield"(%4) : (f32) -> ()
    }) : (i32) -> f32
    %5 = "arith.addf"(%0, %2) : (f32, f32) -> f32
    "func.return"(%5, %1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()