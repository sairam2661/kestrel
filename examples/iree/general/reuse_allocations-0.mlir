"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.resource<transient>, index) -> (!stream.resource<transient>, !stream.timepoint), sym_name = "reuseResourceDirect", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.resource<transient>, %arg2: index):
    %0 = "stream.resource.dealloca"(%arg1, %arg2, %arg0) : (!stream.resource<transient>, index, !stream.timepoint) -> !stream.timepoint
    %1:2 = "stream.resource.alloca"(%arg2, %0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%1#0, %1#1) : (!stream.resource<transient>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

