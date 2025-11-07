"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i1, none) -> (i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: i1, %arg2: none):
    %0:2 = "handshake.fork"(%arg1) : (i1) -> (i1, i1)
    %1:2 = "handshake.cond_br"(%0#1, %arg0) : (i1, i32) -> (i32, i32)
    "handshake.sink"(%1#0) : (i32) -> ()
    %2:2 = "handshake.cond_br"(%0#0, %arg2) : (i1, none) -> (none, none)
    %3:2 = "handshake.fork"(%2#0) : (none) -> (none, none)
    %4 = "handshake.constant"(%3#0) <{value = 42 : i32}> : (none) -> i32
    %5:2 = "handshake.control_merge"(%3#1, %2#1) : (none, none) -> (none, index)
    %6 = "handshake.mux"(%5#1, %4, %1#1) : (index, i32, i32) -> i32
    "handshake.return"(%6, %5#0) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "triangle"} : () -> ()
}) : () -> ()

