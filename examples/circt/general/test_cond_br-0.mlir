"builtin.module"() ({
  "handshake.func"() <{function_type = (i1, index) -> (index, index)}> ({
  ^bb0(%arg0: i1, %arg1: index):
    %0:2 = "handshake.cond_br"(%arg0, %arg1) : (i1, index) -> (index, index)
    "handshake.return"(%0#0, %0#1) : (index, index) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_conditional_branch"} : () -> ()
}) : () -> ()

