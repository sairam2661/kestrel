"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Top"}> ({
    "hw.instance"() <{argNames = [], instanceName = "alligator", moduleName = @Alligator, parameters = [], resultNames = []}> : () -> ()
    "hw.instance"() <{argNames = [], instanceName = "cat", moduleName = @Cat, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Alligator"}> ({
    "hw.instance"() <{argNames = [], instanceName = "bear", moduleName = @Bear, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) {sym_visibility = "private"} : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Bear"}> ({
    "hw.instance"() <{argNames = [], instanceName = "cat", moduleName = @Cat, parameters = [], resultNames = []}> : () -> ()
    "hw.output"() : () -> ()
  }) {sym_visibility = "private"} : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Cat"}> ({
    "hw.output"() : () -> ()
  }) {sym_visibility = "private"} : () -> ()
}) : () -> ()

