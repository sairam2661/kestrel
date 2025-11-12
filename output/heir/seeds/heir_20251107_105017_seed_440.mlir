"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "compute"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "compute_nested"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (!secret_secreti32, !secret_secreti32) -> !secret_secreti32, res_attrs = [{secret.secret}], sym_name = "compute_secret"}> ({
  ^bb0(%arg0: !secret_secreti32, %arg1: !secret_secreti32):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %1 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%2) : (i32) -> ()
    }) : (!secret_secreti32) -> !secret_secreti32
    %3 = "secret.generic"(%arg1) ({
    ^bb0(%arg4: i32):
      %5 = "arith.addi"(%arg4, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%6) : (i32) -> ()
    }) : (!secret_secreti32) -> !secret_secreti32
    %7 = "secret.generic"(%0) ({
    ^bb0(%arg5: i32):
      %8 = "arith.addi"(%arg5, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (!secret_secreti32) -> !secret_secreti32
    "func.return"(%7) : (!secret_secreti32) -> ()
  }) : () -> ()
}) : () -> ()