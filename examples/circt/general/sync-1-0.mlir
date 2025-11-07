"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (i64, i64, none)}> ({
  ^bb0(%arg0: none):
    %0:3 = "handshake.fork"(%arg0) : (none) -> (none, none, none)
    %1 = "handshake.constant"(%0#0) <{value = 0 : i64}> : (none) -> i64
    %2 = "handshake.constant"(%0#1) <{value = 42 : i64}> : (none) -> i64
    %3:3 = "handshake.sync"(%1, %2, %0#2) : (i64, i64, none) -> (i64, i64, none)
    "handshake.return"(%3#0, %3#1, %3#2) : (i64, i64, none) -> ()
  }) {argNames = ["ctrl"], resNames = ["out0", "out1", "out2"], sym_name = "main"} : () -> ()
}) : () -> ()

