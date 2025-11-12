"builtin.module"() ({
  "util.func"() <{function_type = (!hal.semaphore, index) -> (!hal.semaphore, i32), sym_name = "DontFoldTimepointExportMismatch", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.semaphore, %arg1: index):
    %0 = "stream.timepoint.import"(%arg0, %arg1) : (!hal.semaphore, index) -> !stream.timepoint
    %1:2 = "stream.timepoint.export"(%0) : (!stream.timepoint) -> (!hal.semaphore, i32)
    "util.return"(%1#0, %1#1) : (!hal.semaphore, i32) -> ()
  }) : () -> ()
}) : () -> ()

