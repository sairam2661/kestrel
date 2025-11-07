"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> none}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.constant"(%arg0) <{value = 1 : index}> : (none) -> index
    %1 = "handshake.br"(%arg0) : (none) -> none
    %2 = "handshake.br"(%0) : (index) -> index
    %3 = "handshake.merge"(%1) : (none) -> none
    %4 = "handshake.merge"(%2) : (index) -> index
    %5:2 = "handshake.fork"(%3) : (none) -> (none, none)
    %6 = "handshake.constant"(%5#0) <{value = 42 : index}> : (none) -> index
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "handshake.sink"(%7) : (index) -> ()
    "handshake.return"(%5#1) : (none) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "simple"} : () -> ()
}) : () -> ()

