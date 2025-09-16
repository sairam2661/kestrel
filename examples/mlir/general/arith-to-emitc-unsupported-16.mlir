"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "arith_shrui_i1"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "arith.shrui"(%arg0, %arg1) : (i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

