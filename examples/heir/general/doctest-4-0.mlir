"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "arith.constant"() <{value = 100 : i16}> : () -> i16
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %2 = "scf.while"(%arg1) ({
      ^bb0(%arg3: i16):
        %4 = "arith.cmpi"(%arg3, %0) <{predicate = 4 : i64}> : (i16, i16) -> i1
        "scf.condition"(%4, %arg3) : (i1, i16) -> ()
      }, {
      ^bb0(%arg2: i16):
        %3 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%3) : (i16) -> ()
      }) {max_iter = 16 : i64} : (i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%1) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

