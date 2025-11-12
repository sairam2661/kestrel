"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (!secret
 	, !secret) -> !secret, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i3, %arg3: i3):
      %1 = "arith.cmpi"(%arg2, %arg3, "slt") : (i3, i3) -> i1
      %2 = "arith.select"(%1, %arg2, %arg3) : (i1, i3, i3) -> i3
      %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith
     	}> : (i3, i3) -> i3
      "secret.yield"(%3) : (i3) -> ()
    }) : (!secret, !secret) -> !secret
    "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (!secret
 	) -> !secret, sym_name = "fuzz_func2"}> ({
  ^bb0(%arg0: !secret):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i3):
      %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith
     	}> : (i3, i3) -> i3
      %2 = "arith.cmpi"(%1, %1, "sgt") : (i3, i3) -> i1
      %3 = "arith.select"(%2, %1, %1) : (i1, i3, i3) -> i3
      "secret.yield"(%3) : (i3) -> ()
    }) : (!secret) -> !secret
    "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()