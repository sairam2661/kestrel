"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects_with_if"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "scf.if"(%arg0) ({
      %5 = "arith.constant"() <{value = 200 : i32}> : () -> i32
      %6 = "arith.addi"(%2, %5) : (i32, i32) -> i32
      "scf.yield"(%6, %3) : (i32, f32) -> ()
    }, {
      %7 = "arith.constant"() <{value = 300 : i32}> : () -> i32
      %8 = "arith.addi"(%2, %7) : (i32, i32) -> i32
      "scf.yield"(%8, %3) : (i32, f32) -> ()
    }) : (i32) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()