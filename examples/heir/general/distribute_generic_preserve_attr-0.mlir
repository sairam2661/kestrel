"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, i1) -> !secret.secret<i32>, sym_name = "test_distribute_generic_preserve_attr"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: i1):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %1 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> {dialect.attr = 1 : i64} : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) {__argattrs = [{dialect.attr = 2 : i64}]} : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

