"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, index) -> (!stream.timepoint, !stream.timepoint), sym_name = "ElideUnusedAllocaOp", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: index):
    %0:2 = "stream.resource.alloca"(%arg1) : (index) -> (!stream.resource<transient>, !stream.timepoint)
    %1:2 = "stream.resource.alloca"(%arg1, %arg0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%0#1, %1#1) : (!stream.timepoint, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

