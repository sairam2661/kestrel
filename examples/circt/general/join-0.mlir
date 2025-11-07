"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none, none) -> none}> ({
  ^bb0(%arg0: none, %arg1: none, %arg2: none):
    %0 = "handshake.join"(%arg0, %arg1, %arg2) : (none, none, none) -> none
    "handshake.return"(%0) : (none) -> ()
  }) {argNames = ["in0", "in1", "in2"], resNames = ["out0"], sym_name = "simple_multi_input"} : () -> ()
}) : () -> ()

