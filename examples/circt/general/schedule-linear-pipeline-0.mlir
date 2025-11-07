#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/schedule-linear-pipeline-0.mlir":9:108)
"builtin.module"() ({
  "ssp.library"() <{sym_name = "lib"}> ({
    "ssp.operator_type"() <{sspProperties = [#ssp.latency<2>], sym_name = "add1"}> : () -> ()
    "ssp.operator_type"() <{sspProperties = [#ssp.latency<3>], sym_name = "mul2"}> : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, input go : i1, input clk : !seq.clock, input rst : i1, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "pipeline"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1, %arg3: !seq.clock, %arg4: i1):
    %0:2 = "pipeline.unscheduled"(%arg0, %arg1, %arg3, %arg4, %arg2) <{inputNames = ["a0", "a1"], operandSegmentSizes = array<i32: 2, 0, 1, 1, 1>, outputNames = ["out"]}> ({
    ^bb0(%arg5: i32, %arg6: i32, %arg7: i1):
      %1 = "comb.add"(%arg5, %arg6) {ssp.operator_type = @add1} : (i32, i32) -> i32
      %2 = "comb.mul"(%arg5, %1) {ssp.operator_type = @mul2} : (i32, i32) -> i32
      %3 = "comb.add"(%arg6, %arg5) {ssp.operator_type = @add1} : (i32, i32) -> i32
      %4 = "comb.add"(%2, %3) {ssp.operator_type = @add1} : (i32, i32) -> i32
      "pipeline.return"(%4) : (i32) -> ()
    }) {operator_lib = @lib} : (i32, i32, !seq.clock, i1, i1) -> (i32, i1)
    "hw.output"(%0#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

