"builtin.module"() ({
  "handshake.func"() <{function_type = (none, i32) -> (none, i32)}> ({
  ^bb0(%arg0: none, %arg1: i32):
    %0:2 = "handshake.sync"(%arg0, %arg1) : (none, i32) -> (none, i32)
    "handshake.return"(%0#0, %0#1) : (none, i32) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "main"} : () -> ()
}) : () -> ()

