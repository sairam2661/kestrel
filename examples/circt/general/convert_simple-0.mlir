"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32, i32) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i1, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %1 = "arith.shli"(%0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "arith.select"(%arg0, %2, %0) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

