"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i32, !secret_secret_i32) -> !secret_secret_i32, sym_name = "complex_secret_computation"}> ({
  ^bb0(%arg0: !secret_secret_i32, %arg1: !secret_secret_i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, 0) <{predicate = "sgt"}> : (i32, i32) -> i1
      %4 = "arith.select"(%3, %2, %1) : (i1, i32, i32) -> i32
      %5 = "secret.yield"(%4) : (i32) -> ()
    }) : (!secret_secret_i32, !secret_secret_i32) -> !secret_secret_i32
    "func.return"(%0) : (!secret_secret_i32) -> ()
  }) : () -> ()
}) : () -> ()