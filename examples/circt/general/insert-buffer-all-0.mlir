"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> none}> ({
  ^bb0(%arg0: none):
    %0 = "handshake.br"(%arg0) : (none) -> none
    %1:2 = "handshake.control_merge"(%0) : (none) -> (none, index)
    %2:3 = "handshake.fork"(%1#0) : (none) -> (none, none, none)
    "handshake.sink"(%1#1) : (index) -> ()
    %3 = "handshake.constant"(%2#1) <{value = 1 : index}> : (none) -> index
    %4 = "handshake.constant"(%2#0) <{value = 42 : index}> : (none) -> index
    %5 = "handshake.br"(%2#2) : (none) -> none
    %6 = "handshake.br"(%3) : (index) -> index
    %7 = "handshake.br"(%4) : (index) -> index
    %8 = "handshake.mux"(%11#1, %25, %7) : (index, index, index) -> index
    %9:2 = "handshake.fork"(%8) : (index) -> (index, index)
    %10:2 = "handshake.control_merge"(%26, %5) : (none, none) -> (none, index)
    %11:2 = "handshake.fork"(%10#1) : (index) -> (index, index)
    %12 = "handshake.mux"(%9#0, %27, %6) : (index, index, index) -> index
    %13:2 = "handshake.fork"(%12) : (index) -> (index, index)
    %14 = "arith.cmpi"(%13#1, %9#1) <{predicate = 2 : i64}> : (index, index) -> i1
    %15:3 = "handshake.fork"(%14) : (i1) -> (i1, i1, i1)
    %16:2 = "handshake.cond_br"(%15#2, %9#0) : (i1, index) -> (index, index)
    "handshake.sink"(%16#1) : (index) -> ()
    %17:2 = "handshake.cond_br"(%15#1, %10#0) : (i1, none) -> (none, none)
    %18:2 = "handshake.cond_br"(%15#0, %13#0) : (i1, index) -> (index, index)
    "handshake.sink"(%18#1) : (index) -> ()
    %19 = "handshake.merge"(%18#0) : (index) -> index
    %20 = "handshake.merge"(%16#0) : (index) -> index
    %21:2 = "handshake.control_merge"(%17#0) : (none) -> (none, index)
    %22:2 = "handshake.fork"(%21#0) : (none) -> (none, none)
    "handshake.sink"(%21#1) : (index) -> ()
    %23 = "handshake.constant"(%22#0) <{value = 1 : index}> : (none) -> index
    %24 = "arith.addi"(%19, %23) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %25 = "handshake.br"(%20) : (index) -> index
    %26 = "handshake.br"(%22#1) : (none) -> none
    %27 = "handshake.br"(%24) : (index) -> index
    %28:2 = "handshake.control_merge"(%17#1) : (none) -> (none, index)
    "handshake.sink"(%28#1) : (index) -> ()
    "handshake.return"(%28#0) : (none) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "simple_loop"} : () -> ()
}) : () -> ()

