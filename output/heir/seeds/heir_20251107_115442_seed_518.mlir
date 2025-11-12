"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 5}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg2, %arg3) : (i1, i32, i32) -> i32
    "scf.if"(%1) ({
    ^bb0:
      %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"() : ()
    }) {
    } : () -> ()
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()