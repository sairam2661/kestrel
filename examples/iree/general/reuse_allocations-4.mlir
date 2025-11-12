"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.resource<transient>, index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint), sym_name = "reuseResourceThroughJoin", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.resource<transient>, %arg2: index, %arg3: !stream.timepoint):
    %0 = "stream.resource.dealloca"(%arg1, %arg2, %arg0) : (!stream.resource<transient>, index, !stream.timepoint) -> !stream.timepoint
    %1 = "stream.timepoint.join"(%0, %arg3) : (!stream.timepoint, !stream.timepoint) -> !stream.timepoint
    %2:2 = "stream.resource.alloca"(%arg2, %1) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%2#0, %2#1) : (!stream.resource<transient>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

