"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.timepoint, sym_name = "callerDupes", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1:2 = "util.call"(%0, %0) <{callee = @calleeDupes, tied_operands = [-1 : index, -1 : index]}> : (!stream.timepoint, !stream.timepoint) -> (!stream.timepoint, !stream.timepoint)
    %2 = "stream.timepoint.join"(%1#0, %1#1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> (!stream.timepoint, !stream.timepoint), sym_name = "calleeDupes", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint):
    "util.return"(%arg0, %arg1) : (!stream.timepoint, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

