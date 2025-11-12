"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3 = "arith.addi"(%arg1, %2) : (i64, i64) -> i64
    "scf.if"(%1) ({
      "scf.yield"() : () -> ()
    }) : (i32) -> ()

    "scf.if"(%3) ({
      "scf.yield"() : () -> ()
    }) : (i64) -> ()

    "func.return"(%1, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()