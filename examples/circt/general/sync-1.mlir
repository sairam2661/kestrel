"builtin.module"() ({
  "handshake.func"() <{function_type = (none, i32, i512) -> (none, i32, i512)}> ({
  ^bb0(%arg0: none, %arg1: i32, %arg2: i512):
    %0:3 = "handshake.sync"(%arg0, %arg1, %arg2) : (none, i32, i512) -> (none, i32, i512)
    "handshake.return"(%0#0, %0#1, %0#2) : (none, i32, i512) -> ()
  }) {argNames = ["in0", "in1", "in2"], resNames = ["out0", "out1", "out2"], sym_name = "multi_in"} : () -> ()
}) : () -> ()

