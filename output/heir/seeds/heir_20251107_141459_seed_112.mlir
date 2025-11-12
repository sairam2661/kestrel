"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
    ^bb1(%cond: i1):
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.select"(%cond, %arg0, %arg1) : (i1, i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()