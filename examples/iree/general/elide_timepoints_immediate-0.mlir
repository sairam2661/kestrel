"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.timepoint, sym_name = "immediateJoin", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %2 = "stream.timepoint.join"(%0, %1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

