"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complexOpsMix"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "sgt") : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb0:
      %2 = "arith.addf"(%arg0, %arg1) : (i32, i32) -> f32
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()