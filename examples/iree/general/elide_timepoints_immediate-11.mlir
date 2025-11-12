"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "nonUniformCaller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: !stream.timepoint):
    %1 = "util.call"(%arg1) <{callee = @nonUniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %2 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %3 = "util.call"(%2) <{callee = @nonUniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %4 = "stream.timepoint.join"(%1, %3) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%4) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "nonUniformCallee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    %0 = "stream.timepoint.join"(%arg0) : (!stream.timepoint) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

