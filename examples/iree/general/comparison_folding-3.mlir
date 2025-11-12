"builtin.module"() ({
  "util.func"() <{function_type = () -> i1, sym_name = "cmp_ne_null", tied_operands = [-1 : index]}> ({
    %0 = "util.null"() : () -> !util.buffer
    %1 = "util.null"() : () -> !util.buffer
    %2 = "util.cmp.ne"(%0, %1) : (!util.buffer, !util.buffer) -> i1
    "util.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

