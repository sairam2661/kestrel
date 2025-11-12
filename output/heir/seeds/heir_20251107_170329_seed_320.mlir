"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, i64) -> (!secretsecret, i32), sym_name = "complex_logic"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: i64):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg1, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %arg1) : (i1, i32, i32) -> i32
    %4 = "secret.conceal"(%arg0, %3) : (!secretsecret, i32) -> !secretsecret
    %5 = "scf.for"(%arg2, %0, %1, %1) <{step = 1 : index}> ({
    ^bb1(%iv: index, %acc: i32):
      %6 = "arith.addi"(%acc, %iv) <{overflowFlags = #arithoverflownone}> : (i32, index) -> i32
      %7 = "arith.cmpi"(%6, %1, "slt") : (i32, i32) -> i1
      %8 = "scf.if"(%7) <{results = i32}> ({
      ^bb2:
        "scf.yield"(%6) : (i32) -> i32
      }) {
      } : (i1) -> (i32)
      "scf.yield"(%8) : (i32) -> i32
    }) : (index, i32) -> i32
    "func.return"(%4, %5) : (!secretsecret, i32) -> ()
  }) : () -> ()
}) : () -> ()