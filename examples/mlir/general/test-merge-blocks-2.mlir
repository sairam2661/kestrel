"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "inline_regions"}> ({
    "test.SingleBlockImplicitTerminator"() ({
      %0 = "test.type_producer"() : () -> i32
      "test.SingleBlockImplicitTerminator"() ({
        "test.type_consumer"(%0) : (i32) -> ()
        "test.finish"() : () -> ()
      }) : () -> ()
      "test.finish"() : () -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

