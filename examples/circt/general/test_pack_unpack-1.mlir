"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i64, i32>, none) -> (i64, i32, none)}> ({
  ^bb0(%arg0: tuple<i64, i32>, %arg1: none):
    %0:2 = "handshake.unpack"(%arg0) : (tuple<i64, i32>) -> (i64, i32)
    "handshake.return"(%0#0, %0#1, %arg1) : (i64, i32, none) -> ()
  }) {argNames = ["arg0", "ctrl"], resNames = ["out0", "out1", "out2"], sym_name = "test_unpack"} : () -> ()
}) : () -> ()

