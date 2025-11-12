"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (!stream.resource<staging>, !stream.timepoint), sym_name = "resourceAlloca", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0:2 = "stream.resource.alloca"(%arg0) : (index) -> (!stream.resource<staging>, !stream.timepoint)
    "util.return"(%0#0, %0#1) : (!stream.resource<staging>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

