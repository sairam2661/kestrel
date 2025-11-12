"builtin.module"() ({
  "util.func"() <{function_type = (i1, !stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "scfIfConvergent", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: !stream.timepoint, %arg2: !stream.timepoint):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (!stream.timepoint) -> ()
    }, {
      %2 = "stream.timepoint.join"(%arg1, %arg2) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
      "scf.yield"(%2) : (!stream.timepoint) -> ()
    }) : (i1) -> !stream.timepoint
    %1 = "stream.timepoint.join"(%arg1, %arg2, %0) : (!stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

