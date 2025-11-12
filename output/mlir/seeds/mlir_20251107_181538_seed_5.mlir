"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types_and_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
      %2 = "scf.if"(%arg0) <{condition = true}> ({
        ^bb1(%arg2: i32):
          %3 = "arith.addi"(%arg2, %0) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
      }) : (i32) -> i32
      %4 = "scf.if"(%arg1) <{condition = false}> ({
        ^bb3(%arg5: i64):
          %6 = "arith.addi"(%arg5, %1) : (i64, i64) -> i64
          "scf.yield"(%6) : (i64) -> ()
      }) : (i64) -> i64
      "func.return"(%2, %4) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()