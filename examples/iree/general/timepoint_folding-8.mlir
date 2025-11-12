"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "ExpandTimepointJoinOperands", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint, %arg2: !stream.timepoint, %arg3: !stream.timepoint):
    %0 = "stream.timepoint.join"(%arg0, %arg1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    %1 = "stream.timepoint.join"(%arg2, %0, %arg3) : (!stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

