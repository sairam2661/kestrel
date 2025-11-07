"builtin.module"() ({
  "handshake.func"() <{function_type = () -> ()}> ({
    "handshake.return"() : () -> ()
  }) {argNames = [], resNames = [], sym_name = "foo"} : () -> ()
  "handshake.func"() <{function_type = (i32) -> i32}> ({
  ^bb0(%arg0: i32):
    "handshake.instance"() <{module = @foo}> : () -> ()
    "handshake.return"(%arg0) : (i32) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "invalid_instance_op"} : () -> ()
}) : () -> ()

