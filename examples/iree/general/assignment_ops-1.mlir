"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> !util.object, sym_name = "cast", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.cast"(%arg0) : (!util.buffer) -> !util.object
    "util.return"(%0) : (!util.object) -> ()
  }) : () -> ()
}) : () -> ()

