#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/prepare-for-emission-3.mlir":3:35)
"builtin.module"() ({
  "hw.module.extern"() <{module_type = !hw.modty<input in : i8>, parameters = [], port_locs = [#loc], sym_name = "MyExtModule"}> ({
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input a_in : i8>, parameters = [], sym_name = "MoveInstances"}> ({
  ^bb0(%arg0: i8):
    %0 = "comb.add"(%arg0, %arg0) : (i8, i8) -> i8
    "hw.instance"(%0) <{argNames = ["in"], instanceName = "xyz3", moduleName = @MyExtModule, parameters = [], resultNames = []}> : (i8) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) {circt.loweringOptions = "disallowExpressionInliningInPorts"} : () -> ()

