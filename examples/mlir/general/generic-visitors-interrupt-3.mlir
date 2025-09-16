"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    "foo"() : () -> ()
    "test.two_region_op"() ({
      "work"() : () -> ()
    }, {
      "work"() : () -> ()
    }) {interrupt_after_all = true} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

