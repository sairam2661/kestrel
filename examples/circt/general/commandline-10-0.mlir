#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/commandline-10-0.mlir":3:34)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/commandline-10-0.mlir":7:34)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "modA"}> ({
  ^bb0(%arg1: i32):
    "hw.output"(%arg1) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "modB"}> ({
  ^bb0(%arg0: i32):
    "hw.output"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

