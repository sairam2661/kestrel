#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-5.mlir":2:49)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-5.mlir":2:63)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-5.mlir":2:77)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-5.mlir":2:91)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input op0 : i32, input op1 : i32, output sisi : i1, output siui : i1, output uisi : i1, output uiui : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "icmp"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "hwarith.cast"(%arg0) : (i32) -> si32
    %1 = "hwarith.cast"(%arg0) : (i32) -> ui32
    %2 = "hwarith.cast"(%arg1) : (i32) -> si32
    %3 = "hwarith.cast"(%arg1) : (i32) -> ui32
    %4 = "hwarith.icmp"(%0, %2) <{predicate = 2 : i64}> : (si32, si32) -> i1
    %5 = "hwarith.icmp"(%0, %3) <{predicate = 2 : i64}> : (si32, ui32) -> i1
    %6 = "hwarith.icmp"(%1, %2) <{predicate = 2 : i64}> : (ui32, si32) -> i1
    %7 = "hwarith.icmp"(%1, %3) <{predicate = 2 : i64}> : (ui32, ui32) -> i1
    "hw.output"(%4, %5, %6, %7) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

