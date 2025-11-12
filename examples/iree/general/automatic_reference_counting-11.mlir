"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, index) -> (!stream.timepoint, !stream.timepoint), sym_name = "ignoreRetainRelease", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: index):
    %0:2 = "stream.resource.alloca"(%arg1, %arg0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "stream.resource.retain"(%0#0, %arg1) : (!stream.resource<transient>, index) -> ()
    %1:2 = "stream.resource.alloca"(%arg1, %arg0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%0#1, %1#1) : (!stream.timepoint, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

