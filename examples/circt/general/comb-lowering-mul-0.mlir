#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-mul-0.mlir":2:48)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i7, input arg1 : i7, output add : i7>, parameters = [], result_locs = [#loc], sym_name = "mul"}> ({
  ^bb0(%arg0: i7, %arg1: i7):
    %0 = "comb.mul"(%arg0, %arg1) : (i7, i7) -> i7
    "hw.output"(%0) : (i7) -> ()
  }) : () -> ()
}) : () -> ()

