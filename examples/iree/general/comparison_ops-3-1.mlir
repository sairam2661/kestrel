"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, !util.buffer) -> i1, sym_name = "cmp_ne", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: !util.buffer):
    %0 = "util.cmp.ne"(%arg0, %arg1) : (!util.buffer, !util.buffer) -> i1
    "util.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

