"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i64, i32, i64>, none) -> none}> ({
  ^bb0(%arg0: tuple<i64, i32, i64>, %arg1: none):
    %0 = "handshake.join"(%arg0, %arg1) : (tuple<i64, i32, i64>, none) -> none
    "handshake.return"(%0) : (none) -> ()
  }) {argNames = ["in", "arg1"], resNames = ["out0"], sym_name = "different_in_types"} : () -> ()
}) : () -> ()

