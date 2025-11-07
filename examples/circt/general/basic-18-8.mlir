#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-8.mlir":2:46)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-18-8.mlir":2:63)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input input : i3, output result1 : i1, output result2 : i1>, parameters = [], result_locs = [#loc, #loc1], sym_name = "replicate_test"}> ({
  ^bb0(%arg0: i3):
    %0 = "comb.replicate"(%arg0) : (i3) -> i6
    %1 = "comb.extract"(%0) <{lowBit = 5 : i32}> : (i6) -> i1
    %2 = "comb.extract"(%0) <{lowBit = 4 : i32}> : (i6) -> i1
    "hw.output"(%1, %2) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

