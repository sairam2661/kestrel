"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> (), sym_name = "scf_unreachable_no_message"}> ({
  ^bb0(%arg0: i1):
    "scf.if"(%arg0) ({
      "util.scf.unreachable"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

