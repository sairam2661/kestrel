"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (index, i32)}> ({
  ^bb0(%arg0: none):
    %0:2 = "handshake.fork"(%arg0) : (none) -> (none, none)
    %1 = "handshake.constant"(%0#0) <{value = 42 : index}> : (none) -> index
    %2 = "handshake.constant"(%0#1) <{value = 42 : i32}> : (none) -> i32
    "handshake.return"(%1, %2) : (index, i32) -> ()
  }) {argNames = ["arg0"], resNames = ["out0", "out1"], sym_name = "test_constant"} : () -> ()
}) : () -> ()

