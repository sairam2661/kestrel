"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, none) -> none}> ({
  ^bb0(%arg0: i32, %arg1: none):
    %0 = "handshake.buffer"(%arg0) <{bufferType = #handshake<buffer_type_enum fifo>, slots = 2 : i32}> : (i32) -> i32
    "handshake.sink"(%0) : (i32) -> ()
    "handshake.return"(%arg1) : (none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0"], sym_name = "sunk_buffer"} : () -> ()
}) : () -> ()

