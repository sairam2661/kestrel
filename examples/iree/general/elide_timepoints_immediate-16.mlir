"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> !stream.timepoint, sym_name = "scfIfConvergent", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "scf.if"(%arg0) ({
      %3 = "stream.timepoint.immediate"() : () -> !stream.timepoint
      "scf.yield"(%3) : (!stream.timepoint) -> ()
    }, {
      %2 = "stream.timepoint.immediate"() : () -> !stream.timepoint
      "scf.yield"(%2) : (!stream.timepoint) -> ()
    }) : (i1) -> !stream.timepoint
    %1 = "stream.timepoint.join"(%0) : (!stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

