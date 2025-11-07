#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-large-lec-0.mlir":2:68)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-large-lec-0.mlir":7:68)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i16, input arg1 : i16, input arg2 : i16, output add : i16>, parameters = [], result_locs = [#loc], sym_name = "add16"}> ({
  ^bb0(%arg3: i16, %arg4: i16, %arg5: i16):
    %1 = "comb.add"(%arg3, %arg4, %arg5) : (i16, i16, i16) -> i16
    "hw.output"(%1) : (i16) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i33, input arg1 : i33, input arg2 : i33, output add : i33>, parameters = [], result_locs = [#loc1], sym_name = "add33"}> ({
  ^bb0(%arg0: i33, %arg1: i33, %arg2: i33):
    %0 = "comb.add"(%arg0, %arg1, %arg2) : (i33, i33, i33) -> i33
    "hw.output"(%0) : (i33) -> ()
  }) : () -> ()
}) : () -> ()

