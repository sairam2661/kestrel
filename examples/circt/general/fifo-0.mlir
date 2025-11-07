#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fifo-0.mlir":4:102)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fifo-0.mlir":4:116)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fifo-0.mlir":4:131)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fifo-0.mlir":4:145)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fifo-0.mlir":4:168)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst : i1, input inp : i32, input rdEn : i1, input wrEn : i1, output out : i32, output empty : i1, output full : i1, output almost_empty : i1, output almost_full : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3, #loc4], sym_name = "fifo"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i32, %arg3: i1, %arg4: i1):
    %0:5 = "seq.fifo"(%arg2, %arg3, %arg4, %arg0, %arg1) <{almostEmptyThreshold = 1 : i64, almostFullThreshold = 2 : i64, depth = 6 : i64, resultSegmentSizes = array<i32: 1, 1, 1, 1, 1>}> : (i32, i1, i1, !seq.clock, i1) -> (i32, i1, i1, i1, i1)
    "hw.output"(%0#0, %0#2, %0#1, %0#4, %0#3) : (i32, i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

