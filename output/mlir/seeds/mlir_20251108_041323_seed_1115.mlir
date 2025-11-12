"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedOpsFunc"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "scf.if"(%0) <{resultTypes = [i32, f32]}> ({
    ^bb1:
      %4 = "arith.addi"(%1, %1) : (i32, i32) -> i32
      %5 = "arith.addf"(%2, %2) : (f32, f32) -> f32
      "scf.yield"(%4, %5) : (i32, f32) -> ()
    }) {
    } : (i1) -> (i32, f32)
    "func.return"(%3#0, %3#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()