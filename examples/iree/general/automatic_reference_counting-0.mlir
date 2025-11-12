"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, index) -> !stream.timepoint, sym_name = "insertDeallocaNoUses", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: index):
    %0:2 = "stream.resource.alloca"(%arg1, %arg0) : (index, !stream.timepoint) -> (!stream.resource<transient>, !stream.timepoint)
    "util.return"(%0#1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

