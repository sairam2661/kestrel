"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c1_i64 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %0:2 = "scf.for"(%arg0, %c1_i32, %c1_i32, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i64):
      %1:2 = "scf.if"(%arg2) ({
      ^bb0:
        %2 = "arith.addi"(%arg3, %c1_i64) : (i64, i64) -> i64
        "scf.yield"(%arg2, %2) : (i32, i64) -> ()
      }) {
      } : (i32) -> (i32, i64)
      "scf.yield"(%1#0, %1#1) : (i32, i64) -> ()
    }) : (i32, i64) -> (i32, i64)
    "func.return"(%0#0, %0#1) : (i32, i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c1_i64 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %0:2 = "scf.for"(%arg0, %c1_i32, %c1_i32, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i64):
      %1:2 = "scf.for"(%arg2, %c1_i32, %c1_i32, %arg3) ({
      ^bb0(%arg4: i32, %arg5: i64):
        %2 = "arith.addi"(%arg5, %c1_i64) : (i64, i64) -> i64
        "scf.yield"(%arg4, %2) : (i32, i64) -> ()
      }) : (i32, i64) -> (i32, i64)
      "scf.yield"(%1#0, %1#1) : (i32, i64) -> ()
    }) : (i32, i64) -> (i32, i64)
    "func.return"(%0#0, %0#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()