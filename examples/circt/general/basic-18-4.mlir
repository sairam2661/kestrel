#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-4.mlir":2:26)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-4.mlir":2:45)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<output false_out : i1, output true_out : i1>, parameters = [], result_locs = [#loc, #loc1], sym_name = "constants"}> ({
    %0 = "hw.constant"() <{value = false}> : () -> i1
    %1 = "hw.constant"() <{value = true}> : () -> i1
    "hw.output"(%0, %1) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

