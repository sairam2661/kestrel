"builtin.module"() ({
  "util.func"() <{function_type = (!hal.semaphore, index) -> !stream.timepoint, sym_name = "timepointImport", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.semaphore, %arg1: index):
    %0 = "stream.timepoint.import"(%arg0, %arg1) : (!hal.semaphore, index) -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

