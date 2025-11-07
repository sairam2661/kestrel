#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/hw-module-externalizer-0.mlir":2:35)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/hw-module-externalizer-0.mlir":7:35)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "Foo"}> ({
  ^bb0(%arg1: i32):
    %0 = "hw.instance"(%arg1) <{argNames = ["arg0"], instanceName = "inst", moduleName = @Bar, parameters = [], resultNames = ["out"]}> : (i32) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "Bar"}> ({
  ^bb0(%arg0: i32):
    "hw.output"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

