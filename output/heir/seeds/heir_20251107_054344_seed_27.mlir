"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16) -> i16, sym_name = "complex_nested_ops"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16, %arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16, %arg8: i16, %arg9: i16, %arg10: i16, %arg11: i16, %arg12: i16, %arg13: i16, %arg14: i16, %arg15: i16):
    %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (i16, i16) -> i1
    %1 = "arith.select"(%0, %arg2, %arg3) : (i1, i16, i16) -> i16
    %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index}> ({
    ^bb0(%iv: index):
      %3 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
      %4 = "arith.cmpi"(%3, %iv, "gt") : (index, index) -> i1
      %5 = "arith.select"(%4, %arg4, %arg5) : (i1, i16, i16) -> i16
      "scf.yield"() : () -> ()
    }) : () -> ()
    %6 = "arr.muli"(%arg6, %arg7) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
    %7 = "secret.conceal"(%arg8) : (i16) -> !secret_secret
    %8 = "func.call"() <{callee = @nested_func}> : () -> i16
    "func.return"(%8) : (i16) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i16, i16) -> i16, sym_name = "nested_func"}> ({
  ^bb0(%arg0: i16, %arg1: i16):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
    "func.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()