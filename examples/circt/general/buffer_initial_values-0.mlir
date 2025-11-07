"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (i32, none)}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.buffer"(%4#0) <{bufferType = #handshake<buffer_type_enum seq>, initValues = [20, 10], slots = 2 : i32}> : (i32) -> i32
    %1 = "handshake.merge"(%arg0, %5#0) : (none, none) -> none
    %2 = "handshake.constant"(%1) <{value = 10 : i32}> : (none) -> i32
    %3 = "arith.cmpi"(%0, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %4:2 = "handshake.cond_br"(%3, %0) : (i1, i32) -> (i32, i32)
    %5:2 = "handshake.cond_br"(%3, %1) : (i1, none) -> (none, none)
    "handshake.return"(%4#1, %5#1) : (i32, none) -> ()
  }) {argNames = ["inCtrl"], resNames = ["out0", "outCtrl"], sym_name = "top"} : () -> ()
}) : () -> ()

