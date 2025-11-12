"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %4:2 = "scf.if"(%2) ({
        ^bb0(%arg2: i32):
          %5 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %6 = "arith.addf"(%3, %1) : (f32, f32) -> f32
          "scf.yield"(%5, %6) : (i32, f32) -> ()
      }, {
        ^bb1(%arg2: i32):
          %5 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %6 = "arith.subf"(%3, %1) : (f32, f32) -> f32
          "scf.yield"(%5, %6) : (i32, f32) -> ()
      }) : (i32, f32) -> (i32, f32)
      "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()