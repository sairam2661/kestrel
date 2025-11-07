"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, i32) -> (i64, i32)}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0:2 = "handshake.sync"(%arg0, %arg1) {test_attr = "attribute"} : (i64, i32) -> (i64, i32)
    "handshake.return"(%0#0, %0#1) : (i64, i32) -> ()
  }) {argNames = ["in0", "in1"], resNames = ["out0", "out1"], sym_name = "attr"} : () -> ()
}) : () -> ()

