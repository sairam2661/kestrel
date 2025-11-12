"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "scf.for"(%arg0, %arg0, %0, 1) ({
    ^bb0(%i: i32):
      %1 = "arith.cmpi"(%i, %0, "eq") : (i32, i32) -> i1
      "scf.if"(%1) ({
      ^bb0():
        %2 = "arith.addi"(%i, 1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
      }) {
      } : (i1) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32, i32) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()