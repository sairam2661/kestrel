"builtin.module"() ({
  "handshake.func"() <{function_type = (i32) -> i32}> ({
  ^bb0(%arg1: i32):
    "handshake.return"(%arg1) : (i32) -> ()
  }) {argNames = ["in"], resNames = ["out0"], sym_name = "foo"} : () -> ()
  "handshake.func"() <{function_type = (i32) -> i32}> ({
  ^bb0(%arg0: i32):
    %0 = "handshake.instance"(%arg0) <{module = @foo}> : (i32) -> i32
    "handshake.return"(%0) : (i32) -> ()
  }) {argNames = ["in"], resNames = ["out0"], sym_name = "bar"} : () -> ()
}) : () -> ()

