"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> none}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.sync"(%arg0) : (none) -> none
    "handshake.return"(%0) : (none) -> ()
  }) {argNames = ["in0"], resNames = ["out0"], sym_name = "single_in"} : () -> ()
}) : () -> ()

