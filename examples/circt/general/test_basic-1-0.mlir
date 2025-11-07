#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-0.mlir":3:25)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<output out : i32>, parameters = [], result_locs = [#loc], sym_name = "constant"}> ({
    %0 = "hwarith.constant"() <{rawValue = 0 : si32}> : () -> si32
    %1 = "hwarith.cast"(%0) : (si32) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

