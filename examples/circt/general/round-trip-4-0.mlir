#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/round-trip-4-0.mlir":7:23)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/round-trip-4-0.mlir":7:36)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/round-trip-4-0.mlir":7:51)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "plusargs_value"}> ({
    %4 = "sim.plusargs.test"() <{formatString = "foo"}> : () -> i1
    %5:2 = "sim.plusargs.value"() <{formatString = "bar"}> : () -> (i1, i5)
    "hw.output"() : () -> ()
  }) : () -> ()
  "sim.func.dpi"() <{argument_locs = [#loc, #loc1, #loc2], module_type = !hw.modty<output arg0 : i1, input arg1 : i1, output arg2 : i1>, per_argument_attrs = [{}, {}, {}], sym_name = "dpi"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> (i1, i1), sym_name = "func", sym_visibility = "private"}> ({
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input enable : i1, input in : i1>, parameters = [], sym_name = "dpi_call"}> ({
  ^bb0(%arg2: !seq.clock, %arg3: i1, %arg4: i1):
    %0:2 = "sim.func.dpi.call"(%arg2, %arg3, %arg4) <{callee = @dpi, operandSegmentSizes = array<i32: 1, 1, 1>}> : (!seq.clock, i1, i1) -> (i1, i1)
    %1:2 = "sim.func.dpi.call"(%arg2, %arg4) <{callee = @dpi, operandSegmentSizes = array<i32: 1, 0, 1>}> : (!seq.clock, i1) -> (i1, i1)
    %2:2 = "sim.func.dpi.call"(%arg3, %arg4) <{callee = @func, operandSegmentSizes = array<i32: 0, 1, 1>}> : (i1, i1) -> (i1, i1)
    %3:2 = "sim.func.dpi.call"(%arg4) <{callee = @func, operandSegmentSizes = array<i32: 0, 0, 1>}> : (i1) -> (i1, i1)
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input en : i1>, parameters = [], sym_name = "GraphSimulationControl"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1):
    "sim.clocked_terminate"(%arg0, %arg1) <{success = true, verbose = true}> : (!seq.clock, i1) -> ()
    "sim.clocked_terminate"(%arg0, %arg1) <{success = true, verbose = false}> : (!seq.clock, i1) -> ()
    "sim.clocked_terminate"(%arg0, %arg1) <{success = false, verbose = true}> : (!seq.clock, i1) -> ()
    "sim.clocked_terminate"(%arg0, %arg1) <{success = false, verbose = false}> : (!seq.clock, i1) -> ()
    "sim.clocked_pause"(%arg0, %arg1) <{verbose = true}> : (!seq.clock, i1) -> ()
    "sim.clocked_pause"(%arg0, %arg1) <{verbose = false}> : (!seq.clock, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "SimulationControl"}> ({
    "sim.terminate"() <{success = true, verbose = true}> : () -> ()
    "sim.terminate"() <{success = true, verbose = false}> : () -> ()
    "sim.terminate"() <{success = false, verbose = true}> : () -> ()
    "sim.terminate"() <{success = false, verbose = false}> : () -> ()
    "sim.pause"() <{verbose = true}> : () -> ()
    "sim.pause"() <{verbose = false}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

