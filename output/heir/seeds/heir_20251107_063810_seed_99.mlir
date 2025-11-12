"builtin.module"() ({
  "func.func"() <{function_type = (i16, i8, !secret)into!secret, sym_name = "mixedOps"}> ({
  ^bb0(%arg0: i16, %arg1: i8, %arg2: !secret):
    %0 = "arith.constant"() <{value = 42 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 13 : i8}> : () -> i8
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (i16, i8) -> i16
    %4 = "secret.conceal"(%3) : (i16) -> !secret
    %5 = "scf.for"(%arg1) <{lowerBound = 0 : index, upperBound = 5 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %6 = "func.call"() <{callee = @helperFunc}> : () -> !secret
      %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflownone}> : (!secret, !secret) -> !secret
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%4) : (!secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !secret, sym_name = "helperFunc"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %1 = "secret.conceal"(%0) : (i16) -> !secret
    "func.return"(%1) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()