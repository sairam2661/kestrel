"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "gt") : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb1:
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()