"builtin.module"() ({
  "handshake.func"() <{function_type = (i1, index, i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i1, %arg1: index, %arg2: i32, %arg3: none):
    %0:2 = "handshake.cond_br"(%arg0, %arg2) : (i1, i32) -> (i32, i32)
    %1 = "handshake.mux"(%arg1, %0#0, %0#1, %arg2) : (index, i32, i32, i32) -> i32
    "handshake.return"(%1, %arg3) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2", "arg4"], resNames = ["out0", "out1"], sym_name = "cbranch_into_mux_extend"} : () -> ()
}) : () -> ()

