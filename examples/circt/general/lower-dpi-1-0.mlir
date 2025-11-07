#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":2:23)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":2:37)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":2:53)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":5:23)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":5:37)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":5:53)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":10:23)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":10:37)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":10:53)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:15)
#loc10 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:28)
#loc11 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:41)
#loc12 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:54)
#loc13 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:67)
#loc14 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-dpi-1-0.mlir":13:80)
"builtin.module"() ({
  "sim.func.dpi"() <{argument_locs = [#loc, #loc1, #loc2], module_type = !hw.modty<output arg0 : i32, input arg1 : i32, output arg2 : i32>, per_argument_attrs = [{}, {}, {}], sym_name = "foo"}> ({
  }) : () -> ()
  "sim.func.dpi"() <{argument_locs = [#loc3, #loc4, #loc5], module_type = !hw.modty<output arg0 : i32, input arg1 : i32, output arg2 : i32>, per_argument_attrs = [{}, {}, {}], sym_name = "bar", verilogName = "bar_c_name"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!llvm.ptr, i32, !llvm.ptr) -> (), sym_name = "bar_c_name"}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i32, %arg5: !llvm.ptr):
    "func.return"() : () -> ()
  }) : () -> ()
  "sim.func.dpi"() <{argument_locs = [#loc6, #loc7, #loc8], module_type = !hw.modty<output arg0 : i32, input arg1 : i32, output arg2 : i32>, per_argument_attrs = [{}, {}, {}], sym_name = "baz", verilogName = "baz_c_name"}> ({
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input enable : i1, input in : i32, output o1 : i32, output o2 : i32, output o3 : i32, output o4 : i32, output o5 : i32, output o6 : i32>, parameters = [], result_locs = [#loc9, #loc10, #loc11, #loc12, #loc13, #loc14], sym_name = "dpi_call"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i32):
    %0:2 = "sim.func.dpi.call"(%arg0, %arg2) <{callee = @foo, operandSegmentSizes = array<i32: 1, 0, 1>}> : (!seq.clock, i32) -> (i32, i32)
    %1:2 = "sim.func.dpi.call"(%arg2) <{callee = @bar, operandSegmentSizes = array<i32: 0, 0, 1>}> : (i32) -> (i32, i32)
    %2:2 = "sim.func.dpi.call"(%arg2) <{callee = @baz, operandSegmentSizes = array<i32: 0, 0, 1>}> : (i32) -> (i32, i32)
    "hw.output"(%0#0, %0#1, %1#0, %1#1, %2#0, %2#1) : (i32, i32, i32, i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

