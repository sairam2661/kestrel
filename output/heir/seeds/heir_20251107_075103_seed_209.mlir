"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i16, !secret_secret_i16) -> !secret_secret_i16, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !secret_secret_i16, %arg1: !secret_secret_i16):
    %const1 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %const2 = "arith.constant"() <{value = 10 : i16}> : () -> i16
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%val0: i16):
      %1 = "arith.muli"(%val0, %const1) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %const2) : (i16, i16) -> i16
      %3 = "arith.select"(%val0, %2, %const1) <{predicate = "eq"}> : (i16, i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret_secret_i16) -> !secret_secret_i16
    %4 = "secret.generic"(%arg1) ({
    ^bb2(%val1: i16):
      %5 = "arith.muli"(%val1, %const1) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %6 = "arith.addi"(%5, %const2) : (i16, i16) -> i16
      %7 = "arith.select"(%val1, %6, %const1) <{predicate = "eq"}> : (i16, i16, i16) -> i16
      "secret.yield"(%7) : (i16) -> ()
    }) : (!secret_secret_i16) -> !secret_secret_i16
    %8 = "secret.generic"(%0, %4) ({
    ^bb3(%val2: i16, %val3: i16):
      %9 = "arith.subi"(%val2, %val3) : (i16, i16) -> i16
      "secret.yield"(%9) : (i16) -> ()
    }) : (!secret_secret_i16, !secret_secret_i16) -> !secret_secret_i16
    "func.return"(%8) : (!secret_secret_i16) -> ()
  }) : () -> ()
}) : () -> ()