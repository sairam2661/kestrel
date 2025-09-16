"builtin.module"() ({
  "test.one_region_op"() ({
    "test.symbol_scope"() ({
      "func.func"() <{function_type = () -> (), sym_name = "nfunction", sym_visibility = "nested"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
      "func.call"() <{callee = @nfunction}> : () -> ()
      "test.finish"() : () -> ()
    }) : () -> ()
    "test.finish"() : () -> ()
  }) : () -> ()
}) {test.nested_nosymboltable_region} : () -> ()

