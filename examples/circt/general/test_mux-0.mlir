"builtin.module"() ({
  "handshake.func"() <{function_type = (index, index, index, none) -> (index, none)}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: none):
    %0 = "handshake.mux"(%arg0, %arg1, %arg2) : (index, index, index) -> index
    "handshake.return"(%0, %arg3) : (index, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2", "arg3"], resNames = ["out0", "out1"], sym_name = "test_mux"} : () -> ()
}) : () -> ()

