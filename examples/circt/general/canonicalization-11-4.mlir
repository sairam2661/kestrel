"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> none}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.constant"(%arg0) <{value = 24 : i8}> : (none) -> i8
    "handshake.sink"(%0) : (i8) -> ()
    "handshake.return"(%arg0) : (none) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "sunk_constant"} : () -> ()
}) : () -> ()

