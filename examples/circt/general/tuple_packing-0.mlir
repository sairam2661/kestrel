"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (i32, none)}> ({
  ^bb0(%arg0: none):
    %0:4 = "handshake.fork"(%arg0) : (none) -> (none, none, none, none)
    %1 = "handshake.constant"(%0#0) <{value = 123 : i32}> : (none) -> i32
    %2 = "handshake.constant"(%0#1) <{value = 456 : i32}> : (none) -> i32
    %3 = "handshake.constant"(%0#2) <{value = 0 : i32}> : (none) -> i32
    %4 = "handshake.pack"(%1, %2, %3) : (i32, i32, i32) -> tuple<i32, i32, i32>
    %5:3 = "handshake.unpack"(%4) : (tuple<i32, i32, i32>) -> (i32, i32, i32)
    %6 = "arith.addi"(%5#0, %5#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.sink"(%5#2) : (i32) -> ()
    "handshake.return"(%6, %0#3) : (i32, none) -> ()
  }) {argNames = ["inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

