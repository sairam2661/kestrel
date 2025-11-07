"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, index, none) -> (i32, i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: index, %arg2: none):
    %0:3 = "handshake.fork"(%arg0) : (i32) -> (i32, i32, i32)
    %1:2 = "handshake.fork"(%0#0) : (i32) -> (i32, i32)
    %2 = "handshake.mux"(%arg1, %1#1, %0#1) : (index, i32, i32) -> i32
    %3 = "handshake.buffer"(%1#1) <{bufferType = #handshake<buffer_type_enum seq>, slots = 2 : i32}> : (i32) -> i32
    %4 = "arith.addi"(%0#1, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%4, %2, %arg2) : (i32, i32, none) -> ()
  }) {argNames = ["arg0", "c", "arg1"], resNames = ["out0", "out1", "out2"], sym_name = "simple_mux3"} : () -> ()
}) : () -> ()

