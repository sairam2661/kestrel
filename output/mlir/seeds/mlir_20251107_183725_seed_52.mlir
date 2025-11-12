"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i64), sym_name = "complex_loop_and_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c10_i64 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %0 = "scf.for"(%arg0, %c0_i32, %c10_i32) <{step = 1 : i32}> ({
      ^bb1(%iv: i32, %acc: i64):
        %1 = "arith.addi"(%arg1, %acc) : (i64, i64) -> i64
        "scf.yield"(%1) : (i64) -> ()
    }) : (i32, i64) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()