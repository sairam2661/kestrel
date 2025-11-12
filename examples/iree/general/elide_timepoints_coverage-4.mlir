"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "caller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg2: !stream.timepoint, %arg3: !stream.timepoint):
    %1 = "util.call"(%arg2, %arg3) <{callee = @callee, tied_operands = [-1 : index]}> : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    %2 = "stream.timepoint.join"(%arg2, %arg3, %1) : (!stream.timepoint, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.timepoint, !stream.timepoint) -> !stream.timepoint, sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.timepoint):
    %0 = "stream.timepoint.join"(%arg0, %arg1) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

