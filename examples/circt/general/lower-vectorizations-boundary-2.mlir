#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-2.mlir":2:83)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-boundary-2.mlir":2:97)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1, input in1 : i1, input in2 : i1, output out0 : i1, output out1 : i1>, parameters = [], result_locs = [#loc, #loc1], sym_name = "boundary_already_vectorized"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
    %0 = "arith.constant"() <{value = dense<false> : vector<2xi1>}> : () -> vector<2xi1>
    %1 = "vector.insert"(%arg0, %0) <{static_position = array<i64: 0>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %2 = "vector.insert"(%arg1, %1) <{static_position = array<i64: 1>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %3 = "vector.broadcast"(%arg2) : (i1) -> vector<2xi1>
    %4 = "arc.vectorize"(%2, %3) <{inputOperandSegments = array<i32: 1, 1>}> ({
    ^bb0(%arg3: i1, %arg4: i1):
      %7 = "arith.andi"(%arg3, %arg4) : (i1, i1) -> i1
      "arc.vectorize.return"(%7) : (i1) -> ()
    }) : (vector<2xi1>, vector<2xi1>) -> vector<2xi1>
    %5 = "vector.extract"(%3) <{static_position = array<i64: 0>}> : (vector<2xi1>) -> i1
    %6 = "vector.extract"(%3) <{static_position = array<i64: 1>}> : (vector<2xi1>) -> i1
    "hw.output"(%5, %6) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

