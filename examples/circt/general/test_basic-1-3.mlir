#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-3.mlir":2:48)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-3.mlir":2:63)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-3.mlir":2:78)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/test_basic-1-3.mlir":2:93)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input op0 : i32, input op1 : i32, output sisi : i32, output siui : i32, output uisi : i32, output uiui : i32>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "mul"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "hwarith.cast"(%arg0) : (i32) -> si32
    %1 = "hwarith.cast"(%arg0) : (i32) -> ui32
    %2 = "hwarith.cast"(%arg1) : (i32) -> si32
    %3 = "hwarith.cast"(%arg1) : (i32) -> ui32
    %4 = "hwarith.mul"(%0, %2) : (si32, si32) -> si64
    %5 = "hwarith.mul"(%0, %3) : (si32, ui32) -> si64
    %6 = "hwarith.mul"(%1, %2) : (ui32, si32) -> si64
    %7 = "hwarith.mul"(%1, %3) : (ui32, ui32) -> ui64
    %8 = "hwarith.cast"(%4) : (si64) -> i32
    %9 = "hwarith.cast"(%5) : (si64) -> i32
    %10 = "hwarith.cast"(%6) : (si64) -> i32
    %11 = "hwarith.cast"(%7) : (ui64) -> i32
    "hw.output"(%8, %9, %10, %11) : (i32, i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

