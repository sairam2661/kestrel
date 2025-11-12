"builtin.module"() ({
  "util.func"() <{function_type = () -> !util.buffer, sym_name = "foldCastIntoNullOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.null"() : () -> !util.object
    %1 = "util.cast"(%0) : (!util.object) -> !util.buffer
    "util.return"(%1) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

