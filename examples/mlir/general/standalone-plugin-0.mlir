"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bar"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!standalone.custom<"10">) -> (), sym_name = "standalone_types"}> ({
  ^bb0(%arg0: !standalone.custom<"10">):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

