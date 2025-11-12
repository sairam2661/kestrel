"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedDialectsTest"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %1, "eq") : (f32, f32) -> i1
    "scf.if"(%2) ({
    ^bb0:
      "scf.if"(%3) ({
      ^bb0:
        "func.call"() <{callee = @mixedDialectsTest}> : () -> (i32, f32)
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()