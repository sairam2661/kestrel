"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixedOps"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    "scf.for"(%0, %0) ({
    ^bb1(%arg2: i32, %arg3: f32):
      %4 = "arith.addf"(%arg3, %arg3) : (f32, f32) -> f32
      "scf.yield"(%arg2, %4) : (i32, f32) -> ()
    }) : (i32, f32) -> (i32, f32)
    "func.return"(%2, %0) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()