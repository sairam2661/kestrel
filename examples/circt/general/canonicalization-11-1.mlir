"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none, none) -> (none, index, none)}> ({
  ^bb0(%arg0: none, %arg1: none, %arg2: none):
    %0:2 = "handshake.control_merge"(%arg0, %arg1) : (none, none) -> (none, index)
    "handshake.return"(%0#0, %0#1, %arg2) : (none, index, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1", "out2"], sym_name = "cmerge_with_control_used"} : () -> ()
}) : () -> ()

