"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (i32, i32) -> (), sym_name = "annotated_secretness"}> ({
  ^bb0(%arg9: i32, %arg10: i32):
    %7 = "arith.addi"(%arg10, %arg10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %8 = "arith.addi"(%arg9, %arg10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>, i32) -> (), sym_name = "typed_secretness"}> ({
  ^bb0(%arg5: !secret.secret<i32>, %arg6: i32):
    %4 = "secret.generic"(%arg5, %arg6) ({
    ^bb0(%arg7: i32, %arg8: i32):
      %5 = "arith.addi"(%arg8, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "arith.addi"(%arg7, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%6) : (i32) -> ()
    }) : (!secret.secret<i32>, i32) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (i32, i32) -> (), sym_name = "multi_result_secretness"}> ({
  ^bb0(%arg3: i32, %arg4: i32):
    %2:2 = "arith.addui_extended"(%arg4, %arg4) : (i32, i32) -> (i32, i1)
    %3:2 = "arith.addui_extended"(%arg3, %arg4) : (i32, i32) -> (i32, i1)
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (i32, i32) -> i32, sym_name = "return_secretness"}> ({
  ^bb0(%arg1: i32, %arg2: i32):
    %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>) -> !secret.secret<i32>, sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>) -> (), sym_name = "func_call"}> ({
  ^bb0(%arg0: !secret.secret<i32>):
    %0 = "func.call"(%arg0) <{callee = @callee}> : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

