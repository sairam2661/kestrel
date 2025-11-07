"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none) -> (none, none, none)}> ({
  ^bb0(%arg0: none, %arg1: none):
    %0:2 = "handshake.fork"(%arg0) : (none) -> (none, none)
    "handshake.return"(%0#0, %0#1, %arg1) : (none, none, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1", "out2"], sym_name = "test_fork"} : () -> ()
}) : () -> ()

