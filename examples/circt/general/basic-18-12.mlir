#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-12.mlir":2:44)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-12.mlir":2:58)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input input : i2, output bit0 : i1, output bit1 : i1>, parameters = [], result_locs = [#loc, #loc1], sym_name = "extract_bits"}> ({
  ^bb0(%arg0: i2):
    %0 = "comb.extract"(%arg0) <{lowBit = 0 : i32}> : (i2) -> i1
    %1 = "comb.extract"(%arg0) <{lowBit = 1 : i32}> : (i2) -> i1
    "hw.output"(%0, %1) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

