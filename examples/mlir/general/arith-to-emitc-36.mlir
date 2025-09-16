"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "arith_extui_i1_to_i32"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.extui"(%arg0) : (i1) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

