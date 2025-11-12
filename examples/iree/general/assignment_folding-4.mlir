"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> !util.buffer, sym_name = "foldChainedCast", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.cast"(%arg0) : (!util.buffer) -> !util.object
    %1 = "util.cast"(%0) : (!util.object) -> !util.buffer
    "util.return"(%1) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

