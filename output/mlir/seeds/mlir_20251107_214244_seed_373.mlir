"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      "scf.if"(%2) ({
        ^bb0(%2: i32):
          %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
          "scf.yield"(%4, %3) : (i32, f32) -> ()
      }, {
        ^bb0(%2: i32):
          %4 = "arith.constant"() <{value = 200 : i32}> : () -> i32
          "scf.yield"(%4, %3) : (i32, f32) -> ()
      }) : (i32, f32) -> ()
      "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()