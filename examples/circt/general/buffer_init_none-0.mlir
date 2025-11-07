"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> none}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.buffer"(%2#1) <{bufferType = #handshake<buffer_type_enum seq>, initValues = [0], slots = 1 : i32}> : (none) -> none
    %1 = "handshake.join"(%0, %arg0) : (none, none) -> none
    %2:2 = "handshake.fork"(%1) : (none) -> (none, none)
    "handshake.return"(%2#0) : (none) -> ()
  }) {argNames = ["inCtrl"], resNames = ["outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

