"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.timepoint, sym_name = "uniformCaller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %1 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %2 = "util.call"(%1) <{callee = @uniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %3 = "util.call"(%1) <{callee = @uniformCallee, tied_operands = [-1 : index]}> : (!stream.timepoint) -> !stream.timepoint
    %4 = "stream.timepoint.join"(%2, %3) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%4) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint) -> !stream.timepoint, sym_name = "uniformCallee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    %0 = "stream.timepoint.join"(%arg0) : (!stream.timepoint) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

