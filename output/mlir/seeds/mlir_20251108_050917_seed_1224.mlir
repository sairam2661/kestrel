"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    "scf.if"(%arg0) ({
    ^bb1(%arg0_1: i32):  "scf.yield"() : () -> ()
    }) {
    "arith.addf"  = "arith.addf"  : (f32, f32) -> f32
    } : (i32) -> ()
    "scf.for"(%arg1, %arg1, %arg1) ({
    ^bb2(%arg1_1: f32):
      %cmp = "arith.cmpi"(%arg1_1, %arg1) <{predicate = "sgt"}> : (f32, f32) -> i1
      "scf.if"(%cmp) ({
      ^bb3(%cmp_1: i1):  "scf.yield"() : () -> ()
      }) {
      "arith.addf"  = "arith.addf"  : (f32, f32) -> f32
      } : (i1) -> ()
    }) : (f32, f32, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()