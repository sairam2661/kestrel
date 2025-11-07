"builtin.module"() ({
  "handshake.func"() <{function_type = (i1, i32, i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i1, %arg1: i32, %arg2: i32, %arg3: none):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, i32, i32) -> i32
    "handshake.return"(%0, %arg3) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2", "arg3"], resNames = ["out0", "out1"], sym_name = "test_select"} : () -> ()
}) : () -> ()

