"builtin.module"() ({
  "func.func"() <{function_type = (i32, !secret_secret) -> (i32, !secret_secret), sym_name = "complex_secret_op", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: !secret_secret):
    %0 = "arith.select"(%arg0, %arg1, %arg1) <{predicate = "slt"}> : (i32, !secret_secret, !secret_secret) -> !secret_secret
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "comb.truth_table"() <{table = [0, 1, 1, 0]}> : () -> i4
    %3 = "scf.for"(%arg0 : i32) ({
      ^bb1(%iv: i32):
        %4 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%1, %0) : (i32, !secret_secret) -> ()
  }) : () -> ()
}) : () -> ()