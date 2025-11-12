"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "ElideImmediateTimepointJoinOperands", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint):
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %2 = "stream.timepoint.join"(%arg0, %0, %1, %arg1) : (!stream.timepoint, !stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

