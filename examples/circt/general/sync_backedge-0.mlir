"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, none) -> (i64, none)}> ({
  ^bb0(%arg0: i64, %arg1: none):
    %0 = "handshake.buffer"(%14) <{bufferType = #handshake<buffer_type_enum seq>, initValues = [0], slots = 1 : i32}> : (none) -> none
    %1:3 = "handshake.sync"(%arg0, %arg1, %0) : (i64, none, none) -> (i64, none, none)
    %2:2 = "handshake.fork"(%1#0) : (i64) -> (i64, i64)
    %3:2 = "handshake.fork"(%1#1) : (none) -> (none, none)
    %4 = "handshake.constant"(%3#0) <{value = 0 : i64}> : (none) -> i64
    %5 = "arith.cmpi"(%4, %2#1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %6:2 = "handshake.fork"(%5) : (i1) -> (i1, i1)
    %7:2 = "handshake.cond_br"(%6#1, %2#0) : (i1, i64) -> (i64, i64)
    %8:2 = "handshake.cond_br"(%6#0, %3#1) : (i1, none) -> (none, none)
    %9 = "handshake.buffer"(%8#0) <{bufferType = #handshake<buffer_type_enum seq>, slots = 10 : i32}> : (none) -> none
    %10:2 = "handshake.control_merge"(%9, %8#1) : (none, none) -> (none, index)
    %11:2 = "handshake.fork"(%10#0) : (none) -> (none, none)
    %12 = "handshake.mux"(%10#1, %7#0, %7#1) : (index, i64, i64) -> i64
    %13:2 = "handshake.fork"(%12) : (i64) -> (i64, i64)
    %14 = "handshake.join"(%13#0, %11#0, %1#2) : (i64, none, none) -> none
    "handshake.return"(%13#1, %11#1) : (i64, none) -> ()
  }) {argNames = ["in0", "inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

