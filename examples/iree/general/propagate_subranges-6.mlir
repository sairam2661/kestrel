"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, i1) -> (), sym_name = "callerInSCF", sym_visibility = "private"}> ({
  ^bb0(%arg1: !util.buffer, %arg2: i1):
    "scf.if"(%arg2) ({
      "util.call"(%arg1) <{callee = @callee}> : (!util.buffer) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!util.buffer) -> (), sym_name = "callee", sym_visibility = "private"}> ({
  ^bb0(%arg0: !util.buffer):
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

