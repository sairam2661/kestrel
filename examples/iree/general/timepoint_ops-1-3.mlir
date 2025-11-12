"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint) -> !hal.fence, sym_name = "timepointExportFence", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    %0 = "stream.timepoint.export"(%arg0) : (!stream.timepoint) -> !hal.fence
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

