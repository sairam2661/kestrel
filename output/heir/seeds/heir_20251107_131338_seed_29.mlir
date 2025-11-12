"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_x, !secret_secret_x, !secret_secret_x) -> !secret_secret_x, sym_name = "nested_secret_ops"}> ({
  ^bb0(%arg0: !secret_secret_x, %arg1: !secret_secret_x, %arg2: !secret_secret_x):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %1 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %arg5) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %3 = "arith.select"(%2, %1, %arg5) <{inputs = [#arith_canonicalize_on_select, #arith_no_nans]}> : (i1, i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret_secret_x, !secret_secret_x, !secret_secret_x) -> !secret_secret_x
    "func.return"(%0) : (!secret_secret_x) -> ()
  }) : () -> ()
}) : () -> ()