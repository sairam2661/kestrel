#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower_to_hw_errors-0.mlir":2:76)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input b_out_result : !esi.channel<i16>, output b_in_resp : !esi.channel<i8>>, parameters = [], result_locs = [#loc], sym_name = "CoerceBundleTransform"}> ({
  ^bb0(%arg0: !esi.channel<i16>):
    %0:2 = "esi.unwrap.vr"(%arg0, %2#1) : (!esi.channel<i16>, i1) -> (i16, i1)
    %1 = "comb.extract"(%0#0) <{lowBit = 0 : i32}> : (i16) -> i8
    %2:2 = "esi.wrap.vr"(%1, %0#1) : (i8, i1) -> (!esi.channel<i8>, i1)
    "hw.output"(%2#0) : (!esi.channel<i8>) -> ()
  }) : () -> ()
}) : () -> ()

