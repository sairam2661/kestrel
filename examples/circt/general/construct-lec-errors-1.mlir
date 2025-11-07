#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/construct-lec-errors-1.mlir":5:50)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32>, parameters = [], sym_name = "modA0"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "modB0"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    "hw.output"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

