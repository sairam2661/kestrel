#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/hw-module-input-pruner-0.mlir":2:68)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, input arg2 : i32, output out0 : i32>, parameters = [], result_locs = [#loc], sym_name = "Foo"}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    "hw.output"(%arg4) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, input arg2 : i32>, parameters = [], sym_name = "Bar"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "hw.instance"(%arg0, %arg1, %arg2) <{argNames = ["arg0", "arg1", "arg2"], instanceName = "foo", moduleName = @Foo, parameters = [], resultNames = ["out0"]}> : (i32, i32, i32) -> i32
    "dbg.variable"(%0) <{name = "x"}> : (i32) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

