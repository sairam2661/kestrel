"builtin.module"() ({
  "handshake.func"() <{function_type = (tuple<i64, i32>, none) -> (tuple<i64, i32>, none)}> ({
  ^bb0(%arg0: tuple<i64, i32>, %arg1: none):
    %0:2 = "handshake.unpack"(%arg0) {testAttr = "content"} : (tuple<i64, i32>) -> (i64, i32)
    %1 = "handshake.pack"(%0#0, %0#1) {testAttr2 = "content2", testAttr3 = "content3"} : (i64, i32) -> tuple<i64, i32>
    "handshake.return"(%1, %arg1) : (tuple<i64, i32>, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "with_attributes"} : () -> ()
}) : () -> ()

