"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> !stream.timepoint, sym_name = "selectSame", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %1 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    %2 = "arith.select"(%arg0, %0, %1) : (i1, !stream.timepoint, !stream.timepoint) -> !stream.timepoint
    "util.return"(%2) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

