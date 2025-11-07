"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i1, input clk : !seq.clock, input rst : i1>, parameters = [], sym_name = "testNoDCE"}> ({
  ^bb0(%arg0: i1, %arg1: !seq.clock, %arg2: i1):
    %0 = "pipeline.scheduled"(%arg0, %arg1, %arg2, %arg0) <{inputNames = ["a0"], operandSegmentSizes = array<i32: 1, 0, 1, 1, 1>, outputNames = []}> ({
    ^bb0(%arg3: i1, %arg4: i1):
      "pipeline.return"() : () -> ()
    }) : (i1, !seq.clock, i1, i1) -> i1
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

