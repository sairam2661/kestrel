"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, none) -> (i64, none)}> ({
  ^bb0(%arg0: i64, %arg1: none):
    %0:2 = "handshake.sync"(%arg0, %arg1) : (i64, none) -> (i64, none)
    "handshake.return"(%0#0, %0#1) : (i64, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

