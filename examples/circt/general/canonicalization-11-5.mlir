"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (none, none)}> ({
  ^bb0(%arg0: none):
    %0:3 = "handshake.fork"(%arg0) : (none) -> (none, none, none)
    "handshake.return"(%0#0, %0#2) : (none, none) -> ()
  }) {argNames = ["arg0"], resNames = ["out0", "out1"], sym_name = "unused_fork_result"} : () -> ()
}) : () -> ()

