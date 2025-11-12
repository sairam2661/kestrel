"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>) -> (!stream.resource<external>, !stream.timepoint), sym_name = "timepointBarrier", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1:2 = "stream.timepoint.barrier"(%arg0, %0) : (!stream.resource<external>, index) -> (!stream.resource<external>, !stream.timepoint)
    "util.return"(%1#0, %1#1) : (!stream.resource<external>, !stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

