"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> i1, sym_name = "cmp_eq_same", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.cmp.eq"(%arg0, %arg0) : (!util.buffer, !util.buffer) -> i1
    "util.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

