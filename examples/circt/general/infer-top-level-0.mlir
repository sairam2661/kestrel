"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "bar"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "foo"}> ({
    "hw.instance"() <{argNames = [], instanceName = "bar", moduleName = @bar, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "baz"}> ({
    "hw.instance"() <{argNames = [], instanceName = "foo", moduleName = @foo, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

