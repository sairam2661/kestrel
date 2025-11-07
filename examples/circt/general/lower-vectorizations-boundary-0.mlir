#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-0.mlir":2:134)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-0.mlir":2:148)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-0.mlir":2:162)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-0.mlir":2:177)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1, input in1 : i1, input in2 : i1, input in3 : i1, input in4 : i64, input in5 : i64, input in6 : i32, input in7 : i32, output out0 : i1, output out1 : i1, output out2 : i64, output out3 : i64>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "vectorize"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: i64, %arg5: i64, %arg6: i32, %arg7: i32):
    %0:2 = "arc.vectorize"(%arg0, %arg1, %arg2, %arg3) <{inputOperandSegments = array<i32: 2, 2>}> ({
    ^bb0(%arg10: i1, %arg11: i1):
      %5 = "comb.and"(%arg10, %arg11) : (i1, i1) -> i1
      "arc.vectorize.return"(%5) : (i1) -> ()
    }) : (i1, i1, i1, i1) -> (i1, i1)
    %1:2 = "arc.vectorize"(%arg4, %arg5, %arg6, %arg6) <{inputOperandSegments = array<i32: 2, 2>}> ({
    ^bb0(%arg8: i64, %arg9: i32):
      %2 = "hw.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "comb.concat"(%2, %arg9) : (i32, i32) -> i64
      %4 = "comb.and"(%arg8, %3) : (i64, i64) -> i64
      "arc.vectorize.return"(%4) : (i64) -> ()
    }) : (i64, i64, i32, i32) -> (i64, i64)
    "hw.output"(%0#0, %0#1, %1#0, %1#1) : (i1, i1, i64, i64) -> ()
  }) : () -> ()
}) : () -> ()

