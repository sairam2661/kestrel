"builtin.module"() ({
  "handshake.func"() <{function_type = (index, none) -> (index, index, none)}> ({
  ^bb0(%arg0: index, %arg1: none):
    %0:2 = "handshake.fork"(%arg0) : (index) -> (index, index)
    "handshake.return"(%0#0, %0#1, %arg1) : (index, index, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1", "out2"], sym_name = "test_fork_data"} : () -> ()
}) : () -> ()

