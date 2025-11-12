"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedDialectsComplexityTest"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_f32 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %add_i32 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %add_f32 = "arith.addf"(%arg1, %c2_f32) : (f32, f32) -> f32
    %cmp_i32 = "arith.cmpi"(%add_i32, %c1_i32, "sgt") : (i32, i32) -> i1
    "scf.if"(%cmp_i32) ({
    ^bb1(%arg2: i1):
      %0 = "arith.addi"(%add_i32, %c1_i32) : (i32, i32) -> i32
      "scf.yield"(%0) : (i32) -> i32
    }) : (i1) -> (i32)
    "func.return"(%add_i32, %add_f32) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()