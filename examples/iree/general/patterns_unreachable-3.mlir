"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> (), sym_name = "simplifyIfBothUnreachable", sym_visibility = "public"}> ({
  ^bb0(%arg0: i1):
    "scf.if"(%arg0) ({
      "util.scf.unreachable"() <{message = "then branch"}> : () -> ()
      "scf.yield"() : () -> ()
    }, {
      "util.scf.unreachable"() <{message = "else branch"}> : () -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

