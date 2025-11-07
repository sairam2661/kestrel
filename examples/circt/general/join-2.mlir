"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none) -> none}> ({
  ^bb0(%arg0: none, %arg1: none):
    %0 = "handshake.join"(%arg0, %arg1) {control = true} : (none, none) -> none
    "handshake.return"(%0) : (none) -> ()
  }) {argNames = ["in", "arg1"], resNames = ["out0"], sym_name = "superfluous_ctrl_attr"} : () -> ()
}) : () -> ()

