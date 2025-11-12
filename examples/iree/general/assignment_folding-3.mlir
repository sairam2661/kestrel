"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> !util.buffer, sym_name = "foldCastSameType", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.cast"(%arg0) : (!util.buffer) -> !util.buffer
    "util.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

