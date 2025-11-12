"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "mixed_dialects_complexity"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "arith.constant"() <{value = -1.5 : f32}> : () -> f32
      %5 = "arith.addf"(%3, %4) : (f32, f32) -> f32
      "scf.if"(%1) ({
        ^bb1:
          %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
          "scf.yield"(%6) : (i32) -> i32
      }) {
        "scf.yield" = {} 
      } : (i32) -> i32
      "func.return"(%1, %5, %0) : (i32, f32, i32) -> ()
  }) : () -> ()
}) : () -> ()