"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Foo"}> ({
    %0 = "verif.symbolic_value"() : () -> !hw.string
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

