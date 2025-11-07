"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: none):
    %0 = "handshake.buffer"(%arg0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (i32) -> i32
    %1 = "handshake.buffer"(%arg1) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (i32) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "handshake.buffer"(%2) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (i32) -> i32
    %4 = "handshake.buffer"(%arg2) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (none) -> none
    "handshake.return"(%3, %4) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "simple_c"} : () -> ()
}) : () -> ()

