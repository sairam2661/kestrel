"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.timepoint, sym_name = "caller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %1 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %2 = "util.call"(%1, %1) <{callee = @callee, tied_operands = [-1 : index]}> : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    %3 = "stream.timepoint.join"(%1, %2) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%3) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint):
    %0 = "stream.timepoint.join"(%arg0, %arg1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

