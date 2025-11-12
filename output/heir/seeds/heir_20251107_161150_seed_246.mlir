"builtin.module"() ({
  "func.func"() <{function_type = (!secret
 	) -> (!secret, !secret), sym_name = "secret_branching_example"}> ({
  ^bb0(%arg0: !secret):
    %0 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i32):
      %2 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith
 	}>: (i32, i32) -> i32
      %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith
 	}>: (i32, i32) -> i32
      %4 = "scf.if"(%0) ({
        %5 = "arith.select"(%0, %2, %3) <{overflowFlags = #arith
 	}>: (i1, i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        %6 = "arith.subi"(%3, %2) <{overflowFlags = #arith
 	}>: (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (i1) -> i32
      "secret.yield"(%4, %3) : (i32, i32) -> ()
    }) : (!secret) -> (!secret, !secret)
    "func.return"(%1#0, %1#1) : (!secret, !secret) -> ()
  }) : () -> ()
}) : () -> ()