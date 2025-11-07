#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-0.mlir":2:80)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-0.mlir":2:94)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-0.mlir":2:108)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-vectorizations-inline-body-0.mlir":2:122)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1, input in1 : i1, input in2 : i1, input in3 : i1, output out0 : i1, output out1 : i1, output out2 : i1, output out3 : i1>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "inline_body"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1):
    %0 = "comb.concat"(%arg0, %arg1) : (i1, i1) -> i2
    %1 = "comb.concat"(%arg2, %arg2) : (i1, i1) -> i2
    %2 = "arc.vectorize"(%0, %1) <{inputOperandSegments = array<i32: 1, 1>}> ({
    ^bb0(%arg6: i2, %arg7: i2):
      %15 = "arith.andi"(%arg6, %arg7) : (i2, i2) -> i2
      "arc.vectorize.return"(%15) : (i2) -> ()
    }) : (i2, i2) -> i2
    %3 = "comb.extract"(%2) <{lowBit = 0 : i32}> : (i2) -> i1
    %4 = "comb.extract"(%2) <{lowBit = 1 : i32}> : (i2) -> i1
    %5 = "arith.constant"() <{value = dense<false> : vector<2xi1>}> : () -> vector<2xi1>
    %6 = "vector.insert"(%arg0, %5) <{static_position = array<i64: 0>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %7 = "vector.insert"(%arg1, %6) <{static_position = array<i64: 1>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %8 = "arith.constant"() <{value = dense<false> : vector<2xi1>}> : () -> vector<2xi1>
    %9 = "vector.insert"(%arg2, %8) <{static_position = array<i64: 0>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %10 = "vector.insert"(%arg3, %9) <{static_position = array<i64: 1>}> : (i1, vector<2xi1>) -> vector<2xi1>
    %11 = "arc.vectorize"(%7, %10) <{inputOperandSegments = array<i32: 1, 1>}> ({
    ^bb0(%arg4: vector<2xi1>, %arg5: vector<2xi1>):
      %14 = "arith.andi"(%arg4, %arg5) : (vector<2xi1>, vector<2xi1>) -> vector<2xi1>
      "arc.vectorize.return"(%14) : (vector<2xi1>) -> ()
    }) : (vector<2xi1>, vector<2xi1>) -> vector<2xi1>
    %12 = "vector.extract"(%11) <{static_position = array<i64: 0>}> : (vector<2xi1>) -> i1
    %13 = "vector.extract"(%11) <{static_position = array<i64: 1>}> : (vector<2xi1>) -> i1
    "hw.output"(%3, %4, %12, %13) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

