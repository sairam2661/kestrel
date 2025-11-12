"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  	, i32) -> (i32, !secret), sym_name = "complex_fuzzer"}> ({
  ^bb0(%arg0: !secret, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith
  	} > : (i32, i32) -> i32
    %3 = "arith.cmpi"("slt", %2, %1) : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %0) : (i1, i32, i32) -> i32
    %5 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %6 = "arith.muli"(%arg2, %4) <{overflowFlags = #arith
  	} > : (i32, i32) -> i32
      "secret.yield"(%6) : (i32) -> ()
    }) : (!secret, i32) -> !secret
    "func.return"(%4, %5) : (i32, !secret) -> ()
  }) : () -> ()
}) : () -> ()