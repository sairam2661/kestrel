#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-names-0.mlir":7:44)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-names-0.mlir":7:62)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-names-0.mlir":7:77)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/infer-memories-names-0.mlir":7:101)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input addr : i10, input enable : i1, input data : i8>, parameters = [], sym_name = "TestMemory"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i10, %arg2: i1, %arg3: i8):
    "hw.instance"(%arg1, %arg2, %arg0, %arg3) <{argNames = ["W0_addr", "W0_en", "W0_clk", "W0_data"], instanceName = "foo", moduleName = @Memory, parameters = [], resultNames = []}> : (i10, i1, !seq.clock, i8) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.generator.schema"() <{descriptor = "FIRRTL_Memory", requiredAttrs = ["depth", "numReadPorts", "numWritePorts", "numReadWritePorts", "readLatency", "writeLatency", "width", "maskGran", "readUnderWrite", "writeUnderWrite", "writeClockIDs"], sym_name = "FIRRTLMem"}> : () -> ()
  "hw.module.generated"() <{generatorKind = @FIRRTLMem, module_type = !hw.modty<input W0_addr : i10, input W0_en : i1, input W0_clk : !seq.clock, input W0_data : i8>, parameters = [], port_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "Memory"}> ({
  }) {depth = 1024 : i64, maskGran = 8 : ui32, numReadPorts = 0 : ui32, numReadWritePorts = 0 : ui32, numWritePorts = 1 : ui32, readLatency = 1 : ui32, readUnderWrite = 0 : ui32, width = 8 : ui32, writeClockIDs = [], writeLatency = 1 : ui32, writeUnderWrite = 1 : i32} : () -> ()
}) : () -> ()

