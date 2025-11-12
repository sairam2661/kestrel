"builtin.module"() ({
  "util.func"() <{function_type = (index, !stream.resource<staging>, !stream.timepoint) -> (), sym_name = "resourceDealloca", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: !stream.resource<staging>, %arg2: !stream.timepoint):
    %0 = "stream.resource.dealloca"(%arg1, %arg0) : (!stream.resource<staging>, index) -> !stream.timepoint
    %1 = "stream.resource.dealloca"(%arg1, %arg0, %arg2) : (!stream.resource<staging>, index, !stream.timepoint) -> !stream.timepoint
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

