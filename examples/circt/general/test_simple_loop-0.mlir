"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (i64, none)}> ({
  ^bb0(%arg0: none):
    %0:4 = "handshake.fork"(%arg0) : (none) -> (none, none, none, none)
    %1 = "handshake.constant"(%0#2) <{value = 1 : i64}> : (none) -> i64
    %2 = "handshake.constant"(%0#1) <{value = 42 : i64}> : (none) -> i64
    %3 = "handshake.constant"(%0#0) <{value = 1 : i64}> : (none) -> i64
    %4 = "handshake.buffer"(%13#0) <{bufferType = #handshake<buffer_type_enum seq>, initValues = [0], slots = 1 : i32}> : (i1) -> i1
    %5:4 = "handshake.fork"(%4) : (i1) -> (i1, i1, i1, i1)
    %6 = "handshake.mux"(%5#3, %0#3, %16#0) : (i1, none, none) -> none
    %7 = "handshake.mux"(%5#2, %2, %14#0) : (i1, i64, i64) -> i64
    %8:2 = "handshake.fork"(%7) : (i64) -> (i64, i64)
    %9 = "handshake.mux"(%5#1, %3, %18#0) : (i1, i64, i64) -> i64
    %10 = "handshake.mux"(%5#0, %1, %19) : (i1, i64, i64) -> i64
    %11:2 = "handshake.fork"(%10) : (i64) -> (i64, i64)
    %12 = "arith.cmpi"(%11#0, %8#0) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %13:5 = "handshake.fork"(%12) : (i1) -> (i1, i1, i1, i1, i1)
    %14:2 = "handshake.cond_br"(%13#4, %8#1) : (i1, i64) -> (i64, i64)
    "handshake.sink"(%14#1) : (i64) -> ()
    %15:2 = "handshake.cond_br"(%13#3, %9) : (i1, i64) -> (i64, i64)
    "handshake.sink"(%15#1) : (i64) -> ()
    %16:2 = "handshake.cond_br"(%13#2, %6) : (i1, none) -> (none, none)
    %17:2 = "handshake.cond_br"(%13#1, %11#1) : (i1, i64) -> (i64, i64)
    %18:2 = "handshake.fork"(%15#0) : (i64) -> (i64, i64)
    %19 = "arith.addi"(%17#0, %18#1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "handshake.return"(%17#1, %16#1) : (i64, none) -> ()
  }) {argNames = ["inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "main"} : () -> ()
}) : () -> ()

