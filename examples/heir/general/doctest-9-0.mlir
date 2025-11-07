"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, i32) -> !secret.secret<i32>, sym_name = "mixed_secretness"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg3, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %2 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret.secret<i32>, i32) -> !secret.secret<i32>
    "func.return"(%0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

