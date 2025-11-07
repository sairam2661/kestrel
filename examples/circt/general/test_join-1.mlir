"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i1, none) -> none}> ({
  ^bb0(%arg0: i32, %arg1: i1, %arg2: none):
    %0 = "handshake.join"(%arg0, %arg1, %arg2) : (i32, i1, none) -> none
    "handshake.return"(%0) : (none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0"], sym_name = "test_join_multi_types"} : () -> ()
}) : () -> ()

