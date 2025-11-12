"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.timepoint, sym_name = "timepointImmediate", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.timepoint.immediate"() : () -> !stream.timepoint
    "util.return"(%0) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

