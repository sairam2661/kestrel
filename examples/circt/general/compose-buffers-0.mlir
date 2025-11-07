"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: none):
    %0:2 = "handshake.fork"(%arg0) : (i32) -> (i32, i32)
    %1 = "handshake.mux"(%0#0, %0#1, %2#0) : (i32, i32, i32) -> i32
    %2:2 = "handshake.fork"(%1) : (i32) -> (i32, i32)
    "handshake.return"(%2#1, %arg1) : (i32, none) -> ()
  }) {argNames = ["arg0", "ctrl"], resNames = ["out0", "out1"], sym_name = "foo"} : () -> ()
}) : () -> ()

