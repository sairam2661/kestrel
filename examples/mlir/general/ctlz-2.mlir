"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "ctlz_index"}> ({
  ^bb0(%arg0: index):
    %0 = "math.ctlz"(%arg0) : (index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

