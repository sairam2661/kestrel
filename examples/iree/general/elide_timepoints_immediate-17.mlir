"builtin.module"() ({
  "util.func"() <{function_type = (i1, !stream.timepoint) -> !stream.timepoint, sym_name = "scfIfDivergent", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: !stream.timepoint):
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "scf.if"(%arg0) ({
      "scf.yield"(%0) : (!stream.timepoint) -> ()
    }, {
      %3 = "stream.timepoint.join"(%arg1, %0) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
      "scf.yield"(%3) : (!stream.timepoint) -> ()
    }) : (i1) -> !stream.timepoint
    %2 = "stream.timepoint.join"(%arg1, %1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

