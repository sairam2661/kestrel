#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":8:46)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":8:64)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":8:79)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":8:103)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":14:54)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":14:72)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":14:87)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":14:111)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":14:129)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":17:83)
#loc10 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":21:46)
#loc11 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":21:64)
#loc12 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":21:79)
#loc13 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":21:104)
#loc14 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":24:94)
#loc15 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":28:57)
#loc16 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":28:75)
#loc17 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":28:90)
#loc18 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":28:115)
#loc19 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":31:113)
#loc20 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:46)
#loc21 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:65)
#loc22 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:81)
#loc23 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:106)
#loc24 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:125)
#loc25 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-0.mlir":35:145)
"builtin.module"() ({
  "hw.generator.schema"() <{descriptor = "FIRRTL_Memory", requiredAttrs = ["depth", "numReadPorts", "numWritePorts", "numReadWritePorts", "readLatency", "writeLatency", "width", "maskGran", "readUnderWrite", "writeUnderWrite", "writeClockIDs"], sym_name = "FIRRTLMem"}> : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, input data : i8>, parameters = [], sym_name = "TestWOMemory"}> ({
  ^bb0(%arg16: !seq.clock, %arg17: i10, %arg18: i1, %arg19: i8):
    "hw.instance"(%arg17, %arg18, %arg16, %arg19) <{argNames = ["W0_addr", "W0_en", "W0_clk", "W0_data"], instanceName = "foo", moduleName = @WOMemory, parameters = [], resultNames = []}> : (i10, i1, !seq.clock, i8) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input W0_addr : i10, input W0_en : i1, input W0_clk : !seq.clock, input W0_data : i8>, parameters = [], port_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "WOMemory"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 0 : ui32, numReadWritePorts = 0 : ui32, numWritePorts = 1 : ui32, readLatency = 1 : ui32, readUnderWrite = 0 : ui32, width = 8 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, input data : i16, input mask : i2>, parameters = [], sym_name = "TestWOMemoryWithMask"}> ({
  ^bb0(%arg11: !seq.clock, %arg12: i10, %arg13: i1, %arg14: i16, %arg15: i2):
    "hw.instance"(%arg12, %arg13, %arg11, %arg14, %arg15) <{argNames = ["W0_addr", "W0_en", "W0_clk", "W0_data", "W0_mask"], instanceName = "foo", moduleName = @WOMemoryWithMask, parameters = [], resultNames = []}> : (i10, i1, !seq.clock, i16, i2) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input W0_addr : i10, input W0_en : i1, input W0_clk : !seq.clock, input W0_data : i16, input W0_mask : i2>, parameters = [], port_locs = [#loc4, #loc5, #loc6, #loc7, #loc8], sym_name = "WOMemoryWithMask"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 0 : ui32, numReadWritePorts = 0 : ui32, numWritePorts = 1 : ui32, readLatency = 1 : ui32, readUnderWrite = 0 : ui32, width = 16 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, output data : i8>, parameters = [], result_locs = [#loc9], sym_name = "TestROMemory"}> ({
  ^bb0(%arg8: !seq.clock, %arg9: i10, %arg10: i1):
    %2 = "hw.instance"(%arg9, %arg10, %arg8) <{argNames = ["R0_addr", "R0_en", "R0_clk"], instanceName = "foo", moduleName = @ROMemory, parameters = [], resultNames = ["R0_data"]}> : (i10, i1, !seq.clock) -> i8
    "hw.output"(%2) : (i8) -> ()
  }) : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input R0_addr : i10, input R0_en : i1, input R0_clk : !seq.clock, output R0_data : i8>, parameters = [], port_locs = [#loc10, #loc11, #loc12, #loc13], sym_name = "ROMemory"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 1 : ui32, numReadWritePorts = 0 : ui32, numWritePorts = 0 : ui32, readLatency = 0 : ui32, readUnderWrite = 0 : ui32, width = 8 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, output data : i8>, parameters = [], result_locs = [#loc14], sym_name = "TestROMemoryWithLatency"}> ({
  ^bb0(%arg5: !seq.clock, %arg6: i10, %arg7: i1):
    %1 = "hw.instance"(%arg6, %arg7, %arg5) <{argNames = ["R0_addr", "R0_en", "R0_clk"], instanceName = "foo", moduleName = @ROMemoryWithLatency, parameters = [], resultNames = ["R0_data"]}> : (i10, i1, !seq.clock) -> i8
    "hw.output"(%1) : (i8) -> ()
  }) : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input R0_addr : i10, input R0_en : i1, input R0_clk : !seq.clock, output R0_data : i8>, parameters = [], port_locs = [#loc15, #loc16, #loc17, #loc18], sym_name = "ROMemoryWithLatency"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 1 : ui32, numReadWritePorts = 0 : ui32, numWritePorts = 0 : ui32, readLatency = 3 : ui32, readUnderWrite = 0 : ui32, width = 8 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, input wmode : i1, input wdata : i8, output rdata : i8>, parameters = [], result_locs = [#loc19], sym_name = "TestRWMemory"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i10, %arg2: i1, %arg3: i1, %arg4: i8):
    %0 = "hw.instance"(%arg1, %arg2, %arg0, %arg3, %arg4) <{argNames = ["RW0_addr", "RW0_en", "RW0_clk", "RW0_wmode", "RW0_wdata"], instanceName = "foo", moduleName = @RWMemory, parameters = [], resultNames = ["RW0_rdata"]}> : (i10, i1, !seq.clock, i1, i8) -> i8
    "hw.output"(%0) : (i8) -> ()
  }) : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input RW0_addr : i10, input RW0_en : i1, input RW0_clk : !seq.clock, input RW0_wmode : i1, input RW0_wdata : i8, output RW0_rdata : i8>, parameters = [], port_locs = [#loc20, #loc21, #loc22, #loc23, #loc24, #loc25], sym_name = "RWMemory"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 0 : ui32, numReadWritePorts = 1 : ui32, numWritePorts = 0 : ui32, readLatency = 0 : ui32, readUnderWrite = 0 : ui32, width = 8 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
}) : () -> ()

