#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-16.mlir":2:35)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-16.mlir":2:48)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-16.mlir":2:62)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<output low : i1, output high : i1, output zero : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2], sym_name = "multibit_constants"}> ({
    %0 = "hw.constant"() <{value = 0 : i2}> : () -> i2
    %1 = "hw.constant"() <{value = -1 : i2}> : () -> i2
    %2 = "comb.extract"(%0) <{lowBit = 0 : i32}> : (i2) -> i1
    %3 = "comb.extract"(%1) <{lowBit = 0 : i32}> : (i2) -> i1
    %4 = "comb.extract"(%0) <{lowBit = 1 : i32}> : (i2) -> i1
    "hw.output"(%2, %3, %4) : (i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

