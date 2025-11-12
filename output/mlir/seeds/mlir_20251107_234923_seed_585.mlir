"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "test_complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.addi"(%0, %arg0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%1, %arg1) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    %4 = "scf.if"(%2) ({
      ^bb1:
        %5 = "arith.mul"(%0, %3) : (i32, i64) -> i64
        "scf.yield"(%3, %5) : (i64, i64) -> ()
    }, {
      ^bb2:
        %6 = "arith.sub"(%3, %1) : (i64, i64) -> i64
        "scf.yield"(%3, %6) : (i64, i64) -> ()
    }) : (i32) -> (i64, i64)
    "func.return"(%arg0, %4#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()