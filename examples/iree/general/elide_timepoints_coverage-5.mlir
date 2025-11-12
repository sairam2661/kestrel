"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "callerDupes", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg2: !stream.timepoint):
    %0:2 = "util.call"(%arg2, %arg2) <{callee = @calleeDupes, tied_operands = [-1 : index, -1 : index]}> : (!stream.timepoint, !stream.timepoint) -> (!stream.timepoint, !stream.timepoint)
    %1 = "stream.timepoint.join"(%arg2, %0#0, %0#1) : (!stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> (!stream.timepoint, !stream.timepoint), sym_name = "calleeDupes", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint):
    "util.return"(%arg0, %arg1) : (!stream.timepoint, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

