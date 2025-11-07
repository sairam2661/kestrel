"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i64, i32, i64>, none) -> (tuple<i32, i64>, none)}> ({
  ^bb0(%arg0: tuple<i64, i32, i64>, %arg1: none):
    %0:3 = "handshake.unpack"(%arg0) : (tuple<i64, i32, i64>) -> (i64, i32, i64)
    %1 = "arith.addi"(%0#0, %0#2) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %2 = "handshake.pack"(%0#1, %1) : (i32, i64) -> tuple<i32, i64>
    "handshake.return"(%2, %arg1) : (tuple<i32, i64>, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "unpack_pack"} : () -> ()
}) : () -> ()

