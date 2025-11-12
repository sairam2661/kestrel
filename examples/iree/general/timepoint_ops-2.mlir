"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint) -> (!hal.semaphore, index), sym_name = "timepointExport", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint):
    %0:2 = "stream.timepoint.export"(%arg0) : (!stream.timepoint) -> (!hal.semaphore, index)
    "util.return"(%0#0, %0#1) : (!hal.semaphore, index) -> ()
  }) : () -> ()
}) : () -> ()

