"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "nonUniformCaller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: !stream.timepoint, %arg2: !stream.timepoint):
    %0 = "util.call"(%arg1) <{callee = @nonUniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %1 = "stream.timepoint.join"(%arg1, %arg2) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    %2 = "util.call"(%1) <{callee = @nonUniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %3 = "stream.timepoint.join"(%arg1, %0, %arg2, %2) : (!stream.timepoint, !stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%3) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "nonUniformCallee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    "util.return"(%arg0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

