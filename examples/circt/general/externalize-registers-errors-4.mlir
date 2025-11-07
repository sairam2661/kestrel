#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-errors-4.mlir":2:29)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-errors-4.mlir":10:76)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<output out : !seq.immutable<i32>>, parameters = [], result_locs = [#loc], sym_name = "init_emitter"}> ({
    %2 = "seq.initial"() ({
      %3 = "hw.constant"() <{value = 0 : i32}> : () -> i32
      "seq.yield"(%3) : (i32) -> ()
    }) : () -> !seq.immutable<i32>
    "hw.output"(%2) : (!seq.immutable<i32>) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "reg_with_instance_initial"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i32):
    %0 = "hw.instance"() <{argNames = [], instanceName = "foo", moduleName = @init_emitter, parameters = [], resultNames = ["out"]}> : () -> !seq.immutable<i32>
    %1 = "seq.compreg"(%arg1, %arg0, %0) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i32, !seq.clock, !seq.immutable<i32>) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

