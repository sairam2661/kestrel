"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Foo"}> ({
    %0 = "hw.constant"() <{value = 0 : i32}> : () -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

