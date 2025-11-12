"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "testComplexControlFlow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %4 = "scf.if"(%3) ({
      ^bb1(%arg2: i64):
        %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i64) -> i32
    "func.return"(%2, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()