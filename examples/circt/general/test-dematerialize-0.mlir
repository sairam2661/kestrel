"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: none):
    %0:2 = "handshake.control_merge"(%15#1, %15#0, %arg2) : (none, none, none) -> (none, index)
    %1:2 = "handshake.fork"(%0#1) : (index) -> (index, index)
    %2 = "handshake.mux"(%1#1, %21, %18#0, %arg1) : (index, i32, i32, i32) -> i32
    %3:2 = "handshake.fork"(%2) : (i32) -> (i32, i32)
    %4 = "handshake.mux"(%1#0, %20#0, %19, %arg0) : (index, i32, i32, i32) -> i32
    %5:2 = "handshake.fork"(%4) : (i32) -> (i32, i32)
    %6 = "arith.cmpi"(%5#1, %3#1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %7:3 = "handshake.fork"(%6) : (i1) -> (i1, i1, i1)
    %8:2 = "handshake.cond_br"(%7#2, %0#0) : (i1, none) -> (none, none)
    %9:2 = "handshake.cond_br"(%7#1, %3#0) : (i1, i32) -> (i32, i32)
    "handshake.sink"(%9#1) : (i32) -> ()
    %10:2 = "handshake.cond_br"(%7#0, %5#0) : (i1, i32) -> (i32, i32)
    %11:2 = "handshake.fork"(%10#0) : (i32) -> (i32, i32)
    %12:2 = "handshake.fork"(%9#0) : (i32) -> (i32, i32)
    %13 = "arith.cmpi"(%11#1, %12#1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %14:3 = "handshake.fork"(%13) : (i1) -> (i1, i1, i1)
    %15:2 = "handshake.cond_br"(%14#2, %8#0) : (i1, none) -> (none, none)
    %16:2 = "handshake.cond_br"(%14#1, %11#0) : (i1, i32) -> (i32, i32)
    %17:2 = "handshake.cond_br"(%14#0, %12#0) : (i1, i32) -> (i32, i32)
    %18:2 = "handshake.fork"(%17#0) : (i32) -> (i32, i32)
    %19 = "arith.subi"(%16#0, %18#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %20:2 = "handshake.fork"(%16#1) : (i32) -> (i32, i32)
    %21 = "arith.subi"(%17#1, %20#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%10#1, %8#1) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "gcd"} : () -> ()
}) : () -> ()

