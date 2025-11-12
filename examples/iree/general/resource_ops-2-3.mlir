"builtin.module"() ({
  "util.func"() <{function_type = (index, !stream.resource<staging>, !stream.timepoint) -> !stream.timepoint, sym_name = "resourceDealloca", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: !stream.resource<staging>, %arg2: !stream.timepoint):
    %0 = "stream.resource.dealloca"(%arg1, %arg0) : (!stream.resource<staging>, index) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

