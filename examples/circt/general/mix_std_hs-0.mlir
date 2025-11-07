"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, none) -> (i64, none)}> ({
  }) {argNames = ["in0", "in1"], resNames = ["out0", "out1"], sym_name = "compute"} : () -> ()
  "handshake.func"() <{function_type = (tuple<i64, i64, i64, i64, i64, i64, i64, i64>, none) -> (tuple<i64, i64, i64, i64, i64, i64, i64, i64>, none)}> ({
  ^bb0(%arg0: tuple<i64, i64, i64, i64, i64, i64, i64, i64>, %arg1: none):
    %0:8 = "handshake.unpack"(%arg0) : (tuple<i64, i64, i64, i64, i64, i64, i64, i64>) -> (i64, i64, i64, i64, i64, i64, i64, i64)
    %1:8 = "handshake.fork"(%arg1) : (none) -> (none, none, none, none, none, none, none, none)
    %2:2 = "handshake.instance"(%0#0, %1#0) <{module = @compute}> : (i64, none) -> (i64, none)
    %3:2 = "handshake.instance"(%0#1, %1#1) <{module = @compute}> : (i64, none) -> (i64, none)
    %4:2 = "handshake.instance"(%0#2, %1#2) <{module = @compute}> : (i64, none) -> (i64, none)
    %5:2 = "handshake.instance"(%0#3, %1#3) <{module = @compute}> : (i64, none) -> (i64, none)
    %6:2 = "handshake.instance"(%0#4, %1#4) <{module = @compute}> : (i64, none) -> (i64, none)
    %7:2 = "handshake.instance"(%0#5, %1#5) <{module = @compute}> : (i64, none) -> (i64, none)
    %8:2 = "handshake.instance"(%0#6, %1#6) <{module = @compute}> : (i64, none) -> (i64, none)
    %9:2 = "handshake.instance"(%0#7, %1#7) <{module = @compute}> : (i64, none) -> (i64, none)
    %10 = "handshake.pack"(%2#0, %3#0, %4#0, %5#0, %6#0, %7#0, %8#0, %9#0) : (i64, i64, i64, i64, i64, i64, i64, i64) -> tuple<i64, i64, i64, i64, i64, i64, i64, i64>
    %11 = "handshake.join"(%2#1, %3#1, %4#1, %5#1, %6#1, %7#1, %8#1, %9#1) : (none, none, none, none, none, none, none, none) -> none
    "handshake.return"(%10, %11) : (tuple<i64, i64, i64, i64, i64, i64, i64, i64>, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

