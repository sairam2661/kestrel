"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i32, i32>, none) -> (i32, none)}> ({
  ^bb0(%arg0: tuple<i32, i32>, %arg1: none):
    %0:2 = "handshake.unpack"(%arg0) : (tuple<i32, i32>) -> (i32, i32)
    %1 = "arith.addi"(%0#0, %0#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%1, %arg1) : (i32, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

