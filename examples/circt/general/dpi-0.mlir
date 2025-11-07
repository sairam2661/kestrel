#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":2:23)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":2:36)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":2:51)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:15)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:27)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:39)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:51)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:63)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:75)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:87)
#loc10 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":7:99)
#loc11 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":20:44)
#loc12 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":20:61)
#loc13 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":21:42)
#loc14 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dpi-0.mlir":22:26)
"builtin.module"() ({
  "sim.func.dpi"() <{argument_locs = [#loc, #loc1, #loc2], module_type = !hw.modty<output arg0 : i1, input arg1 : i1, output arg2 : i1>, per_argument_attrs = [{}, {}, {}], sym_name = "dpi"}> ({
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input enable : i1, input in : i1, output o1 : i1, output o2 : i1, output o3 : i1, output o4 : i1, output o5 : i1, output o6 : i1, output o7 : i1, output o8 : i1>, parameters = [], result_locs = [#loc3, #loc4, #loc5, #loc6, #loc7, #loc8, #loc9, #loc10], sym_name = "dpi_call"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i1):
    %2:2 = "sim.func.dpi.call"(%arg0, %arg1, %arg2) <{callee = @dpi, operandSegmentSizes = array<i32: 1, 1, 1>}> : (!seq.clock, i1, i1) -> (i1, i1)
    %3:2 = "sim.func.dpi.call"(%arg0, %arg2) <{callee = @dpi, operandSegmentSizes = array<i32: 1, 0, 1>}> : (!seq.clock, i1) -> (i1, i1)
    %4:2 = "sim.func.dpi.call"(%arg1, %arg2) <{callee = @dpi, operandSegmentSizes = array<i32: 0, 1, 1>}> : (i1, i1) -> (i1, i1)
    %5:2 = "sim.func.dpi.call"(%arg2) <{callee = @dpi, operandSegmentSizes = array<i32: 0, 0, 1>}> : (i1) -> (i1, i1)
    "hw.output"(%2#0, %2#1, %3#0, %3#1, %4#0, %4#1, %5#0, %5#1) : (i1, i1, i1, i1, i1, i1, i1, i1) -> ()
  }) : () -> ()
  "sim.func.dpi"() <{argument_locs = [#loc11, #loc12], module_type = !hw.modty<input in_0 : i64, output out_0 : i32>, per_argument_attrs = [{}, {}], sym_name = "increment_counter"}> ({
  }) {sym_visibility = "private"} : () -> ()
  "sim.func.dpi"() <{argument_locs = [#loc13], module_type = !hw.modty<output out_0 : i64>, per_argument_attrs = [{}], sym_name = "create_counter"}> ({
  }) {sym_visibility = "private"} : () -> ()
  "hw.module"() <{module_type = !hw.modty<output result : i32>, parameters = [], result_locs = [#loc14], sym_name = "Issue7191"}> ({
    %0 = "sim.func.dpi.call"() <{callee = @create_counter, operandSegmentSizes = array<i32: 0, 0, 0>}> : () -> i64
    %1 = "sim.func.dpi.call"(%0) <{callee = @increment_counter, operandSegmentSizes = array<i32: 0, 0, 1>}> : (i64) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

