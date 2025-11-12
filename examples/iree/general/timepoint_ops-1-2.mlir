"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence) -> !stream.timepoint, sym_name = "timepointImportFence", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence):
    %0 = "stream.timepoint.import"(%arg0) : (!hal.fence) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

