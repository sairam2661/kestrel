#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-6.mlir":2:59)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-6.mlir":2:73)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-6.mlir":2:87)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-6.mlir":2:101)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input op0 : i5, input op1 : i7, output sisi : i1, output siui : i1, output uisi : i1, output uiui : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "icmp_mixed_width"}> ({
  ^bb0(%arg0: i5, %arg1: i7):
    %0 = "hwarith.cast"(%arg0) : (i5) -> si5
    %1 = "hwarith.cast"(%arg0) : (i5) -> ui5
    %2 = "hwarith.cast"(%arg1) : (i7) -> si7
    %3 = "hwarith.cast"(%arg1) : (i7) -> ui7
    %4 = "hwarith.icmp"(%0, %2) <{predicate = 2 : i64}> : (si5, si7) -> i1
    %5 = "hwarith.icmp"(%0, %3) <{predicate = 2 : i64}> : (si5, ui7) -> i1
    %6 = "hwarith.icmp"(%1, %2) <{predicate = 2 : i64}> : (ui5, si7) -> i1
    %7 = "hwarith.icmp"(%1, %3) <{predicate = 2 : i64}> : (ui5, ui7) -> i1
    "hw.output"(%4, %5, %6, %7) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

