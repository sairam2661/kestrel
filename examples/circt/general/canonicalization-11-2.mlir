"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none, none) -> (none, none)}> ({
  ^bb0(%arg0: none, %arg1: none, %arg2: none):
    %0:2 = "handshake.control_merge"(%arg0, %arg1) : (none, none) -> (none, index)
    "handshake.sink"(%0#1) : (index) -> ()
    "handshake.return"(%0#0, %arg2) : (none, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "cmerge_with_control_sunk"} : () -> ()
}) : () -> ()

