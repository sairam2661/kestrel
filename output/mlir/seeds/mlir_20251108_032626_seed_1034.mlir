"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "scf.if"(%0) ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
    ^bb0:
      "scf.yield"(%0) : (i32) -> ()
    }) : (i32) -> (i32)
    %4 = "scf.if"(%1) ({
    ^bb0(%arg3: f32):
      %5 = "arith.addf"(%arg3, %arg3) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }, {
    ^bb0:
      "scf.yield"(%1) : (f32) -> ()
    }) : (f32) -> (f32)
    "func.return"(%2, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()