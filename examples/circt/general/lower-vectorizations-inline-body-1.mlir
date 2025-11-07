#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-1.mlir":2:78)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-1.mlir":2:92)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1, input in1 : i1, input in2 : i1, input in3 : i1, output out0 : i1, output out1 : i1>, parameters = [], result_locs = [#loc, #loc1], sym_name = "vectorize"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1):
    %0:2 = "arc.vectorize"(%arg0, %arg1, %arg2, %arg3) <{inputOperandSegments = array<i32: 2, 2>}> ({
    ^bb0(%arg4: i1, %arg5: i1):
      %1 = "comb.and"(%arg4, %arg5) : (i1, i1) -> i1
      "arc.vectorize.return"(%1) : (i1) -> ()
    }) : (i1, i1, i1, i1) -> (i1, i1)
    "hw.output"(%0#0, %0#1) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

