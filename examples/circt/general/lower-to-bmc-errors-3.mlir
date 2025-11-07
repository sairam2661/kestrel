#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-errors-3.mlir":2:57)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "testModule"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "comb.add"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "comb.icmp"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "verif.assert"(%1) : (i1) -> ()
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

