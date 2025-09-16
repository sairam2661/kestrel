"builtin.module"() ({
  "test.one_region_op"() ({
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "nested", sym_visibility = "nested"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
      "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "test.finish"() : () -> ()
  }) : () -> ()
}) {test.nested_nosymboltable_region_notcalled} : () -> ()

