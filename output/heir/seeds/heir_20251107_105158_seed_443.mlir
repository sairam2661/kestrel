"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret_i1, !secretsecret_i1, i32) -> i32, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !secretsecret_i1, %arg1: !secretsecret_i1, %arg2: i32):
      %0 = "comb.truth_table"(%arg0, %arg1) <{table = "0011"}> : (!secretsecret_i1, !secretsecret_i1) -> i1
      %1 = "arith.cmpi"(%arg2, "0") <{predicate = "slt"}> : (i32, i32) -> i1
      %2 = "arith.select"(%0, %1, "false") : (i1, i1, i1) -> i1
      %3 = "scf.for"(%arg2) <{lower_bound = 0, upper_bound = 10, step = 1}> ({
      ^bb0(%iv: i32):
        %4 = "arith.extsi"(%2) : (i1) -> i32
        %5 = "arith.addi"(%4, %iv) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) : (i32) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()