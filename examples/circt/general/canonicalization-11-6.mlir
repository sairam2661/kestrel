"builtin.module"() ({
  "handshake.func"() <{function_type = (index, none) -> (none, none)}> ({
  ^bb0(%arg0: index, %arg1: none):
    %0 = "handshake.mux"(%arg0, %arg1, %arg1, %arg1) : (index, none, none, none) -> none
    "handshake.return"(%0, %arg1) : (none, none) -> ()
  }) {argNames = ["c", "arg1"], resNames = ["out0", "out1"], sym_name = "simple_mux"} : () -> ()
}) : () -> ()

