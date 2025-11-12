"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
    ^bb0:
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %3 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
    ^bb0:
      %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %6 = "arith.select"(%0, %1, %4) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()