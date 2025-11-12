"builtin.module"() ({
  "util.func"() <{function_type = (i1, !stream.timepoint) -> !stream.timepoint, sym_name = "selectDifferent", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: !stream.timepoint):
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "arith.select"(%arg0, %0, %arg1) : (i1, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%1) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

