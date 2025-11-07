"builtin.module"() ({
  "handshake.func"() <{function_type = (index, none) -> (index, none)}> ({
  ^bb0(%arg0: index, %arg1: none):
    %0 = "handshake.buffer"(%arg0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (index) -> index
    "handshake.return"(%0, %arg1) : (index, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_buffer_data"} : () -> ()
}) : () -> ()

