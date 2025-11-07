"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, i32, none) -> (tuple<i64, i32>, none)}> ({
  ^bb0(%arg0: i64, %arg1: i32, %arg2: none):
    %0 = "handshake.pack"(%arg0, %arg1) : (i64, i32) -> tuple<i64, i32>
    "handshake.return"(%0, %arg2) : (tuple<i64, i32>, none) -> ()
  }) {argNames = ["arg0", "arg1", "ctrl"], resNames = ["out0", "out1"], sym_name = "test_pack"} : () -> ()
}) : () -> ()

