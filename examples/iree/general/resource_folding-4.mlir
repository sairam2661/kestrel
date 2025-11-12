"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, index) -> (!stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, !stream.timepoint), sym_name = "BatchAllocaOps", sym_visibility = "private", tied_operands = [-1 : index, -1 : index, -1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: index):
    %0:2 = "stream.resource.alloca"(%arg1, %arg0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    %1:2 = "stream.resource.alloca"(%arg1, %0#1) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    %2:2 = "stream.resource.alloca"(%arg1, %1#1) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    %3:2 = "stream.resource.alloca"(%arg1, %2#1) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%0#0, %1#0, %2#0, %3#0, %3#1) : (!stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, !stream.resource<transient>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

