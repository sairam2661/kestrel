"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> i1, sym_name = "resourceIsTerminal", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    %0 = "stream.resource.is_terminal"(%arg0, %arg1) : (!stream.resource<transient>, index) -> i1
    "util.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

