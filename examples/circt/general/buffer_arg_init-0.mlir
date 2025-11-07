"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none) -> none}> ({
  ^bb0(%arg0: none, %arg1: none):
    %0 = "handshake.merge"(%arg1, %3#1) : (none, none) -> none
    %1 = "handshake.buffer"(%0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 1 : i32}> : (none) -> none
    %2 = "handshake.join"(%1, %arg0) : (none, none) -> none
    %3:2 = "handshake.fork"(%2) : (none) -> (none, none)
    "handshake.return"(%3#0) : (none) -> ()
  }) {argNames = ["inCtrl", "startTokens"], resNames = ["outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

