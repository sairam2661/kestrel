"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i64, i32, i64>, none) -> (tuple<i64, i32>, none)}> ({
  ^bb0(%arg0: tuple<i64, i32, i64>, %arg1: none):
    %0:3 = "handshake.unpack"(%arg0) : (tuple<i64, i32, i64>) -> (i64, i32, i64)
    %1 = "arith.addi"(%0#0, %0#2) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %2 = "handshake.pack"(%1, %0#1) : (i64, i32) -> tuple<i64, i32>
    "handshake.return"(%2, %arg1) : (tuple<i64, i32>, none) -> ()
  }) {argNames = ["arg0", "ctrl"], resNames = ["out0", "out1"], sym_name = "main"} : () -> ()
}) : () -> ()

