#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-full-0.mlir":2:99)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-full-0.mlir":2:113)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-full-0.mlir":2:127)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-full-0.mlir":2:141)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1, input in1 : i1, input in2 : i1, input in3 : i1, output out0 : i1, output out1 : i1, output out2 : i1, output out3 : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "vectorize_body_already_lowered"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1):
    %0:2 = "arc.vectorize"(%arg0, %arg1, %arg2, %arg2) <{inputOperandSegments = array<i32: 2, 2>}> ({
    ^bb0(%arg6: i2, %arg7: i2):
      %3 = "arith.andi"(%arg6, %arg7) : (i2, i2) -> i2
      "arc.vectorize.return"(%3) : (i2) -> ()
    }) : (i1, i1, i1, i1) -> (i1, i1)
    %1:2 = "arc.vectorize"(%arg0, %arg1, %arg2, %arg3) <{inputOperandSegments = array<i32: 2, 2>}> ({
    ^bb0(%arg4: vector<2xi1>, %arg5: vector<2xi1>):
      %2 = "arith.andi"(%arg4, %arg5) : (vector<2xi1>, vector<2xi1>) -> vector<2xi1>
      "arc.vectorize.return"(%2) : (vector<2xi1>) -> ()
    }) : (i1, i1, i1, i1) -> (i1, i1)
    "hw.output"(%0#0, %0#1, %1#0, %1#1) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

