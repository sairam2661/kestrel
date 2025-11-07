#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/state-elimination-0.mlir":2:81)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input en : i1, input rst : i1, input arg0 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "Foo"}> ({
  ^bb0(%arg1: !seq.clock, %arg2: i1, %arg3: i1, %arg4: i32):
    %0 = "arc.state"(%arg1, %arg2, %arg3, %arg4) <{arc = @DummyArc, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>}> {name = "reg1"} : (!seq.clock, i1, i1, i32) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i32) -> i32, sym_name = "DummyArc"}> ({
  ^bb0(%arg0: i32):
    "arc.output"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

