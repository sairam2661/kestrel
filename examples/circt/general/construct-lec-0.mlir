#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/construct-lec-0.mlir":2:50)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/construct-lec-0.mlir":7:50)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "modA0"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %1 = "comb.add"(%arg2, %arg3) : (i32, i32) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "modB0"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "comb.mul"(%arg0, %arg1) : (i32, i32) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "modA1"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "modB1"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

