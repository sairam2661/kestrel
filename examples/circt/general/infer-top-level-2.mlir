"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "bar"}> ({
    "hw.instance"() <{argNames = [], instanceName = "baz", moduleName = @baz, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "foo"}> ({
    "hw.instance"() <{argNames = [], instanceName = "baz", moduleName = @baz, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "baz"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

