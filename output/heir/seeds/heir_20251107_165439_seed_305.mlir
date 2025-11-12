"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  , i32, i32) -> !secret, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !secret, %arg1: i32, %arg2: i32):
    %3 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %6 = "arith.cmpi"(%arg3, %arg4, "slt") : (i32, i32) -> i1
      %7 = "arith.select"(%arg3, %arg4, %6) : (i32, i32, i1) -> i32
      %8 = "arith.muli"(%arg5, %7) <{overflowFlags = #arith
      }>: (i32, i32) -> i32
      %9 = "func.call"(%8) <{callee = @submod}> : (i32) -> i32
      %10 = "secret.yield"(%9) : (i32) -> ()
    }) : (!secret, i32, i32) -> !secret
    "func.return"(%3) : (!secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "submod"}> ({
  ^bb0(%arg6: i32):
    %11 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %12 = "arith.addi"(%arg6, %11) <{overflowFlags = #arith
    }>: (i32, i32) -> i32
    "func.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()