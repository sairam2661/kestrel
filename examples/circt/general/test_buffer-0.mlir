"builtin.module"() ({
  "handshake.func"() <{function_type = (none, none) -> (none, none)}> ({
  ^bb0(%arg0: none, %arg1: none):
    %0 = "handshake.buffer"(%arg0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 3 : i32}> : (none) -> none
    "handshake.return"(%0, %arg1) : (none, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_buffer_none"} : () -> ()
}) : () -> ()

