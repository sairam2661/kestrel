"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i64) -> i64, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i64):
    %0 = "arith.constant"() <{value = 1234567890 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 987654321 : i64}> : () -> i64
    %2 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    %4 = "arith.muli"(%3, %0) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    %5 = "arith.select"(%3, %4, %0) <{predicate = "slt"}> : (i64, i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
}) : () -> ()