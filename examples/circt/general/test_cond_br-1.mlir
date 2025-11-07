"builtin.module"() ({
  "handshake.func"() <{function_type = (i1, none) -> (none, none)}> ({
  ^bb0(%arg0: i1, %arg1: none):
    %0:2 = "handshake.cond_br"(%arg0, %arg1) : (i1, none) -> (none, none)
    "handshake.return"(%0#0, %0#1) : (none, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_nonetyped_conditional_branch"} : () -> ()
}) : () -> ()

