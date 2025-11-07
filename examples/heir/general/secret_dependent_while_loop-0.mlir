"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "basic_while_loop_with_secret_condition"}> ({
  ^bb0(%arg4: !secret.secret<i16>):
    %8 = "arith.constant"() <{value = 100 : i16}> : () -> i16
    %9 = "arith.constant"() <{value = 20 : i16}> : () -> i16
    %10 = "secret.generic"(%arg4) ({
    ^bb0(%arg5: i16):
      %11 = "scf.while"(%arg5) ({
      ^bb0(%arg7: i16):
        %13 = "arith.cmpi"(%arg7, %8) <{predicate = 4 : i64}> : (i16, i16) -> i1
        "scf.condition"(%13, %arg7) : (i1, i16) -> ()
      }, {
      ^bb0(%arg6: i16):
        %12 = "arith.muli"(%arg6, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%12) : (i16) -> ()
      }) {max_iter = 16 : i64} : (i16) -> i16
      "secret.yield"(%11) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%10) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "while_loop_with_joint_secret_condition"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "arith.constant"() <{value = 100 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 20 : i16}> : () -> i16
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %3 = "scf.while"(%arg1) ({
      ^bb0(%arg3: i16):
        %5 = "arith.cmpi"(%arg3, %0) <{predicate = 2 : i64}> : (i16, i16) -> i1
        %6 = "arith.cmpi"(%arg3, %1) <{predicate = 4 : i64}> : (i16, i16) -> i1
        %7 = "arith.andi"(%5, %6) : (i1, i1) -> i1
        "scf.condition"(%7, %arg3) : (i1, i16) -> ()
      }, {
      ^bb0(%arg2: i16):
        %4 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%4) : (i16) -> ()
      }) {max_iter = 16 : i64} : (i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%2) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

