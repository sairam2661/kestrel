"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i32, i32>, none) -> (tuple<i32, i32>, none)}> ({
  ^bb0(%arg0: tuple<i32, i32>, %arg1: none):
    %0 = "handshake.buffer"(%arg0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (tuple<i32, i32>) -> tuple<i32, i32>
    "handshake.return"(%0, %arg1) : (tuple<i32, i32>, none) -> ()
  }) {argNames = ["t", "arg0"], resNames = ["out0", "out1"], sym_name = "test_buffer_tuple_seq"} : () -> ()
}) : () -> ()

