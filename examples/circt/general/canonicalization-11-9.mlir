"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, none) -> (i32, i32, i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: none):
    %0:2 = "handshake.fork"(%arg0) : (i32) -> (i32, i32)
    %1:2 = "handshake.fork"(%0#0) : (i32) -> (i32, i32)
    "handshake.return"(%0#1, %1#0, %1#1, %arg1) : (i32, i32, i32, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1", "out2", "out3"], sym_name = "fork_to_fork"} : () -> ()
}) : () -> ()

