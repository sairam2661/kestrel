"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "nonImmediateJoin", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "stream.timepoint.join"(%arg0, %0) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

