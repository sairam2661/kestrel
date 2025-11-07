"builtin.module"() ({
  "handshake.func"() <{function_type = (index, none) -> (none, none)}> ({
  ^bb0(%arg0: index, %arg1: none):
    %0:3 = "handshake.fork"(%arg1) : (none) -> (none, none, none)
    %1 = "handshake.buffer"(%0#0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (none) -> none
    %2 = "handshake.buffer"(%0#1) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (none) -> none
    %3 = "handshake.mux"(%arg0, %1, %0#2) : (index, none, none) -> none
    "handshake.return"(%2, %3) : (none, none) -> ()
  }) {argNames = ["c", "arg1"], resNames = ["out0", "out1"], sym_name = "simple_mux2"} : () -> ()
}) : () -> ()

