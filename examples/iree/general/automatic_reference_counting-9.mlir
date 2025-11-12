"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.resource<transient>, index) -> !stream.timepoint, sym_name = "ignoreTiedIndeterminate", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.resource<transient>, %arg2: index):
    %0:2 = "stream.timepoint.barrier"(%arg1, %arg2) : (!stream.resource<transient>, index) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%0#1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

