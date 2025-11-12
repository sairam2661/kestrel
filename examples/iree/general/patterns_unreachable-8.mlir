"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> (), sym_name = "simplifyForBodyUnreachableNoResult", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: index):
      "util.scf.unreachable"() <{message = "loop body"}> : () -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

